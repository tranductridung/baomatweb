from django.shortcuts import render, redirect, get_object_or_404
from shop_app.models import Product
from django.http import JsonResponse, HttpResponse
from .cart import Cart

# Create your views here.
    
def cart(request):
    cart = Cart(request)
    cart_products = cart.get_products() 
    mycart = cart.get_cart()
    total_of_product = cart.get_products_price()
    total = cart.get_total(total_of_product)
    
    context = {
        'cart_products': cart_products,
        'mycart': mycart,
        'total_of_product': total_of_product,
        'total': total,
    }
    return render(request, "cart.html", context)

def cart_add(request):
    cart = Cart(request)
    if request.POST.get('action') == 'post':
        product_id = int(request.POST.get('product_id'))
        product_quantity = int(request.POST.get('product_qty'))
        
        product = get_object_or_404(Product, product_id = product_id)

        cart.add(product = product, quantity = product_quantity)
        
        cart_quantity = cart.__len__()
        
        response = JsonResponse({'qty': cart_quantity})
        
        return response

def cart_delete(request):
    cart = Cart(request)
    if request.POST.get('action') == 'post':
        product_id = int(request.POST.get('product_id'))
        cart.delete(product=product_id)
        
        total_of_product = cart.get_products_price()
        total = cart.get_total(total_of_product)
        cart_quantity = cart.__len__()
        context = {
            'product': product_id,
            'total': total,
            'qty': cart_quantity,
        }
        response = JsonResponse(context)
        
        return response

def cart_update(request):
    cart = Cart(request)
    
    if request.POST.get('action') == 'post':
        product_id = int(request.POST.get('product_id'))
        product_qty = int(request.POST.get('product_qty'))
        total = int(request.POST.get('total'))
        
        cart.update(product = product_id, quantity = product_qty)
        
        # Tính giá trị sản phẩm thay đổi số lượng
        product_id = int(request.POST.get('product_id'))
        
        price = cart.get_product_price(product_id=product_id)
        
        total_of_product = cart.get_products_price()
        total = cart.get_total(total_of_product)
        cart_quantity = cart.__len__()
        context = {
            'price': price,
            'total': total,
            'qty': cart_quantity,
        }
        
        return JsonResponse(context)