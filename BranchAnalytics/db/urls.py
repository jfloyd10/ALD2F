from django.urls import path, include
from . import views

app_name = 'db'

urlpatterns = [
    path('view/', views.DBLoad.as_view(), name='db_load'),
    path('loadar/', views.DBLoadAR.as_view(), name='db_load_ar'),
    path('clear/', views.DBClear.as_view(), name='db_clear')
]
