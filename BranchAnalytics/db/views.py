from django.shortcuts import render
from django.views.generic import TemplateView
from django.contrib.auth import authenticate, login, logout
from django.shortcuts import redirect,  get_object_or_404
from django.contrib.auth.mixins import LoginRequiredMixin
from django.db.models import Sum, Count
from django.utils import timezone
from django.http import HttpResponse, JsonResponse
from .models import MainData,MainDataAR
import csv
from datetime import datetime


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


class DBClear(TemplateView):

    def get(self,request):
        context = {}
        MainData.objects.all().delete()
        return render(request, self.template_name, context)
