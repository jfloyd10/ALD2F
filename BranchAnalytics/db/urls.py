from django.urls import path, include
from . import views

app_name = 'db'

urlpatterns = [
    path('view/', views.DBLoad.as_view(), name='db_load'),
    path('loadar/', views.DBLoadAR.as_view(), name='db_load_ar'),
    path('loadgl/', views.DBLoadLedger.as_view(), name='db_load_gl'),
    path('clear/', views.DBClear.as_view(), name='db_clear')
]
