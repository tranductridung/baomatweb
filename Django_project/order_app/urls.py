from django.urls import path
from . import views

app_name = 'order_app'
urlpatterns = [
    path('', views.order, name = 'order'),
    path('order_detail_<int:order_id>/', views.order_detail, name='order_detail')
]
 