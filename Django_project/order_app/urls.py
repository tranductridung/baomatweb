from django.urls import path
from . import views

app_name = 'order_app'
urlpatterns = [
    path('', views.order, name = 'order'),
]
 