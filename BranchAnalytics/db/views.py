from django.shortcuts import render
from django.views.generic import TemplateView
from django.contrib.auth import authenticate, login, logout
from django.shortcuts import redirect,  get_object_or_404
from django.contrib.auth.mixins import LoginRequiredMixin
from django.db.models import Sum, Count
from django.utils import timezone
from django.http import HttpResponse, JsonResponse
from .models import MainData,MainDataAR, LedgerData, Ratings, Movies
import csv
from datetime import datetime
import tensorflow as tf
import tensorflow_recommenders as tfrs
import os
from django.conf import settings
from django.db import connection
import numpy as np
import pandas as pd


#Load Retrieval & Ranking Model
retrieval_path = os.path.join(settings.BASE_DIR, 'retrieval')
retrieval_model = tf.saved_model.load(retrieval_path)

ranking_path = os.path.join(settings.BASE_DIR, 'ranking')
ranking_model = tf.saved_model.load(ranking_path)


class DBLoad(TemplateView):

    def get(self,request):
        context = {}
        print('Loading Data')

        with open("data.csv") as f:
            reader = csv.reader(f)
            i = 0
            for row in reader:
                if i == 0:
                    i = 1
                else:
                    new_obj = MainData.objects.create(
                        branch=row[0],
                        state=row[1],
                        products=row[2],
                        industry=row[3],
                        source=row[4],
                        date=datetime.strptime(row[5], '%m/%d/%Y'),
                        salesrep=row[6],
                        customer=row[7],
                        group_name=row[8],

                        price=round(float(row[9].replace(',', '')),0),
                        cost=round(float(row[10].replace(',', '')),0),
                        gp=round(float(row[11].replace(',', '')),0),

                        month=row[12],
                        year=row[13]
                        )

                    new_obj.save()

        return render(request, self.template_name, context)


class DBLoadAR(TemplateView):

    def get(self,request):
        context = {}
        print('Loading Data')

        with open("dataa.csv") as f:
            reader = csv.reader(f)
            i = 0
            for row in reader:
                if i == 0:
                    i = 1
                else:
                    new_obj = MainDataAR.objects.create(
                        branch=row[0],
                        group_name=row[1],
                        month=row[2],
                        year=row[3],
                        customer=row[4],
                        type=row[5],
                        item=row[6],
                        date=datetime.strptime(row[7], '%m/%d/%Y'),
                        aging=row[8],
                        amount=round(float(row[9].replace(',', '')),0)
                        )

                    new_obj.save()

        return render(request, self.template_name, context)


class DBLoadLedger(TemplateView):

    def get(self,request):
        context = {}
        print('Loading Data')

        with open("PLGenerated.csv") as f:
            reader = csv.reader(f)
            i = 0
            for row in reader:
                if i == 0:
                    i = 1
                else:
                    new_obj = LedgerData.objects.create(
                        year=row[0],
                        period=row[1],
                        group_name=row[2],
                        branch=row[3],
                        account=row[4],
                        amount=row[5]
                        )

                    new_obj.save()

        return render(request, self.template_name, context)


class DBClear(TemplateView):

    def get(self,request):
        context = {}
        MainData.objects.all().delete()
        return render(request, self.template_name, context)

class DBClearMovies(TemplateView):

    def get(self,request):
        context = {}
        Movies.objects.all().delete()
        return render(request, self.template_name, context)

class DBClearRatings(TemplateView):

    def get(self,request):
        context = {}
        Ratings.objects.all().delete()
        return render(request, self.template_name, context)


class GetPredictions(TemplateView):

    def get(self,request, **kwargs):
        data = {}
        user_name = request.GET.get('user_name', None)
        prev_watched = request.GET.get('previously_watched', 0)
        prev_watched = 0

        recommendations = []

        if user_name == 'starter':
            data['is_taken'] = 1
            data['suggestions'] = []
            return JsonResponse(data)

        ##Retrieval
        titles = retrieval_model([user_name])
        for e in (titles[1].numpy()[0]):
            recommendations.append(e.decode())

        ##Rank the Reccomendations
        test_ratings = {}
        test_movie_titles = recommendations
        for movie_title in test_movie_titles:
            test_ratings[movie_title] = ranking_model({
              "userId": np.array([user_name]),
              "movieId": np.array([movie_title])
          })

        ratings_dict = []
        for title, score in sorted(test_ratings.items(), key=lambda x: x[1], reverse=True):
            ratings_dict.append(title)


        if prev_watched == 0:
            recommendations = ratings_dict[:10]
            data['is_taken'] = 1
            data['suggestions'] = recommendations
            return JsonResponse(data)

        else:
            print('Exclude')
            ##User doesnt want recommendations for previous watched movies
            recdf = pd.DataFrame(recommendations)
            recdf.columns = ['movieId']

            cursor = connection.cursor()
            cursor.execute("""
            SELECT
                r.movieId,
                MAX(1) as AGGR

            FROM RATINGS_MODEL AS r
            WHERE 1=1
              AND r.userId = '{}'

            GROUP BY
            r.movieId

            """.format(user_name))

            row = cursor.fetchall()
            user_movies = []

            for r in row:
                user_movies.append([r[0], r[1]])

            usermoviesdf = pd.DataFrame(user_movies)
            usermoviesdf.columns = ['movieId', 'Watched']
            recdf = recdf.merge(usermoviesdf, how='left', left_on='movieId', right_on='movieId')
            recdf = recdf.loc[recdf['Watched'] != 1]
            ratings_dict = recdf.movieId.tolist()

            recommendations = ratings_dict[:10]
            data['is_taken'] = 1
            data['suggestions'] = recommendations
            return JsonResponse(data)


class DBLoadRatings(TemplateView):

    def get(self,request):
        context = {}
        print('Loading Data')

        with open("ratings.csv", encoding="utf8") as f:
            reader = csv.reader(f)
            i = 0
            for row in reader:
                if i == 0:
                    i = 1
                else:
                    new_obj = Ratings.objects.create(
                        userId=str(row[0]),
                        movieId=str(row[1]),
                        rating=str(row[2]),
                        timestamp=str(row[3]),
                        )

                    new_obj.save()

        return render(request, self.template_name, context)


class DBLoadMovies(TemplateView):

    def get(self,request):
        context = {}
        print('Loading Data')

        with open("movies.csv", encoding="utf8") as f:
            reader = csv.reader(f)
            i = 0
            for row in reader:
                if i == 0:
                    i = 1
                else:
                    try:
                        new_obj = Movies.objects.create(
                            movieId=str(row[0]),
                            title=str(row[1]),
                            genre=str(row[2]),
                            )

                        new_obj.save()
                    except:
                        pass

        return render(request, self.template_name, context)


class GetActivity(TemplateView):

    def get(self,request):
        data = {}
        user_name = request.GET.get('user_name', None)
        print(user_name)
        print('History Activate')

        cursor = connection.cursor()
        cursor.execute("""
        SELECT
            m.title,
            r.rating,
            SUM(1) as AGGR

        FROM RATINGS_MODEL AS r
        LEFT JOIN MOVIES_MODEL as m
        on r.movieId = m.movieId

        WHERE 1=1
          AND r.userId = '{}'

        GROUP BY
        r.rating,
        m.title

        ORDER BY CAST(r.timestamp as INTEGER) DESC
        """.format(user_name))


        row = cursor.fetchall()
        user_activity = []

        for r in row:
            user_activity.append([r[0],r[1]])

        data['user_activity'] = user_activity
        data['is_taken'] = 1

        return JsonResponse(data)
