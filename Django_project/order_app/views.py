from django.shortcuts import render
from .models import Order,OrderDetail
# Create your views here.

def order(request):
    orders = None
    
    if request.user.is_authenticated:
        orders = Order.objects.select_related('user').filter(user=request.user)

    context = {
        'orders': orders
    }
    return render(request, "order.html", context)

def order_detail(request, order_id):
    order = Order.objects.get(order_id=order_id)
    
    order_details = OrderDetail.objects.filter(order = order)

    context = {
        'order_details': order_details,
        'order': order,
    }
    return render(request, "order_detail.html",context)