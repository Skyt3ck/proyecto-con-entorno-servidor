from django.contrib import admin
from django.urls import path, include


from . import views

urlpatterns = [


    path('',  views.envioPost_home, name="home"),
    path('wellcome/<str:id>/', views.envioPost_wellcome, name="wellcome"),
    path('thanks/<str:id>/', views.envioPost_thanks, name="thanks"),
    path('data/<str:id>/', views.envioPost_data, name="data"),


]




