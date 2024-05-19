from django.shortcuts import render
from .models import Product
from django.http import JsonResponse
from cart_app.cart import Cart
import json
# Create your views here.
def shop(request):
    object = Product.objects.all()
    
    context = {
        'products': object,
        'session_key': request.session.get('session_key'),
        'mycart': Cart(request).get_cart(),
    }      
    
    return render(request,'shop.html',context)

def get_products(request, component):
    if component == 'robusta':
        products = Product.objects.filter(Robusta=True)
    elif component == 'arabica':
        products = Product.objects.filter(Arabica=True)
    elif component == 'culi':
        products = Product.objects.filter(Culi=True)
    else:
        products = Product.objects.all()
        
    products_data = [
        {'product_name': product.product_name, 'img_url': product.img_url, 'price': product.price, 'product_id': product.product_id, 'slug': product.slug}
        for product in products
    ]

    return JsonResponse(products_data, safe=False)
