from django.shortcuts import render, redirect
from .forms import ShippingForm
from order_app.models import Order, OrderDetail
from shop_app.models import Product
from profile_app.models import UserProfile
import datetime
from cart_app.cart import Cart
from django.contrib import messages
from cart_app.views import cal_total
# Create your views here.

def checkout(request): 
    if request.method == "POST":
        shippingForm = ShippingForm(request.POST)
        user_profile = UserProfile.objects.get(user_id=request.user.id)
        
        if shippingForm.is_valid():
            cart = Cart(request)
        
            # Tính tổng tiền của giỏ hàng
            total_of_product = cart.get_products_price()
            subtotal = cart.get_total(total_of_product)
            
            discount, total = cal_total(request, subtotal)
            
            # Tạo một đơn hàng mới
            new_order = Order.objects.create(
                    user = request.user,
                    order_date = datetime.datetime.now(),
                    quantity = cart.__len__(),
                    total = total,
                    point= total / 10000,
                    status='OK',
            )
            
            user_profile.point = user_profile.point + total / 10000
            user_profile.save()
            
            # Lưu thông tin vào shippingAddress 
            shipping_address = shippingForm.save(commit=False)
            shipping_address.order = new_order
            shipping_address.save()
            
            for key, value in cart.get_cart().items():
                product = Product.objects.get(product_id = key)
                OrderDetail.objects.create(
                    order = new_order,
                    product = product,
                    quantity = value,
                    subtotal = cart.get_product_price(product_id=product.product_id),
                )
            
            cart.reset_cart()
            messages.success(request, ("Thanh toán đơn hàng thành công"))
            return redirect('/')

        else:
            messages.error(request, ("Thanh toán đơn hàng bị lỗi. Vui lòng thực hiện lại..."))
            return redirect('/checkout')
    else:
        shippingForm = ShippingForm()
        
    context = {
        'shippingForm': shippingForm,
    }

    return render(request,'checkout.html', context)




