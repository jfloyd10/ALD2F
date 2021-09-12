"""BranchAnalytics URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from . import views
from django.conf.urls.static import static
from django.conf import settings


admin.site.site_header = "Analytics"
admin.site.site_title = "Analytics"
admin.site.index_title = "Analytics"

urlpatterns = [
    path('', views.IndexView.as_view(), name='index'),

    #Dashboards
    path('bidash/', views.BIDash.as_view(), name='bidash'),
    path('ardash/', views.ARDash.as_view(), name='ardash'),
    path('scatter/', views.ScatterView.as_view(), name='scatter'),

    #Reports
    path('report/', views.ReportView.as_view(), name='report_view'),
    path('financials/', views.FinancialReports.as_view(), name='financial_reports'),
    path('p&l/', views.PLView.as_view(), name='profit_loss'),

    #Apis
    path('api/data', views.GatherDataView.as_view(), name='gather_data'),
    path('api/dataar', views.GatherDataViewAR.as_view(), name='gather_data_ar'),
    path('api/datagl', views.GatherDataViewGL.as_view(), name='gather_data_gl'),
    path('api/save_bookmark', views.SaveBookmark.as_view(), name='save_bookmark'),

    #External Apps
    path('db/', include('db.urls', namespace='db')),
    path('users/', include('accounts.urls', namespace='users')),
    path('admin/', admin.site.urls),

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
