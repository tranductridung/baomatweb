from django.shortcuts import render, redirect, get_object_or_404
from shop_app.models import Product
from profile_app.models import UserProfile
from django.http import JsonResponse, HttpResponse
from .cart import Cart

# Create your views here.
def cal_total(request, subtotal):
    point = UserProfile.objects.get(user_id = request.user.id).point

    if point > 100 and point < 300:
        discount = 10
    elif point > 300 and 500:
        discount = 20
    elif point > 500:
        discount = 30
        
    total = (int)(subtotal * (100-discount) / 100)
    
    return discount, total
        
    
def cart(request):
    cart = Cart(request)
    cart_products = cart.get_products() 
    mycart = cart.get_cart()
    total_of_product = cart.get_products_price()
    subtotal = cart.get_total(total_of_product)
    
    discount, total = cal_total(request, subtotal)
        
    context = {
        'cart_products': cart_products,
        'mycart': mycart,
        'total_of_product': total_of_product,
        'subtotal': subtotal,
        'total': total,
        'discount': discount,
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
        subtotal = cart.get_total(total_of_product)
        cart_quantity = cart.__len__()
        
        discount, total = cal_total(request, subtotal)
        
        context = {
            'product': product_id,
            'total': total,
            'subtotal': subtotal,
            'discount': discount,
            'qty': cart_quantity,
        }
        response = JsonResponse(context)
        
        return response

def cart_update(request):
    cart = Cart(request)
    
    if request.POST.get('action') == 'post':
        product_id = int(request.POST.get('product_id'))
        product_qty = int(request.POST.get('product_qty'))

        cart.update(product = product_id, quantity = product_qty)
        
        # Tính giá trị sản phẩm thay đổi số lượng
        product_id = int(request.POST.get('product_id'))
        
        price = cart.get_product_price(product_id=product_id)
        
        total_of_product = cart.get_products_price()
        
        subtotal = cart.get_total(total_of_product)
        
        discount, total = cal_total(request, subtotal)
        
        cart_quantity = cart.__len__()
        
        context = {
            'price': price,
            'discount': discount,
            'total': total,
            'subtotal': subtotal,
            'qty': cart_quantity,
        }
        
        return JsonResponse(context)