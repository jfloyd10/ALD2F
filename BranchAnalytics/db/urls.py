from django.urls import path, include
from . import views

app_name = 'db'

urlpatterns = [
    path('view/', views.DBLoad.as_view(), name='db_load'),
    path('predict', views.GetPredictions.as_view(), name='get_predictions'),
    path('activity', views.GetActivity.as_view(), name='get_user_activity'),

    #Loads
    #path('loadar/', views.DBLoadAR.as_view(), name='db_load_ar'),
    #path('loadgl/', views.DBLoadLedger.as_view(), name='db_load_gl'),
    #path('loadmovies', views.DBLoadMovies.as_view(), name='load_movies'),
    #path('loadratings', views.DBLoadRatings.as_view(), name='load_ratings'),

    #Clears
    #path('clear/', views.DBClear.as_view(), name='db_clear'),
    #path('clearmovies/', views.DBClearMovies.as_view(), name='db_clear_movies'),
    #path('clearratings/', views.DBClearRatings.as_view(), name='db_clear_ratings'),



]
