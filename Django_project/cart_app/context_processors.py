from .cart import Cart

# Tạo context processor để cart có thể hoạt động trên tất cả các trang
def cart(request):
    # Trả về giá trị mặc định của Cart
    return {'cart': Cart(request)}