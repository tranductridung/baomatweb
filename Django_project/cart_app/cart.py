from shop_app.models import Product 
from profile_app.models import UserProfile
class Cart():
    def __init__(self, request):
        self.session = request.session

        self.request = request
        
        cart = self.session.get('session_key')
        
        if 'session_key' not in request.session:
            cart = self.session['session_key'] = {}
        
        self.cart = cart
            
    def add(self, product, quantity):
        product_id = str(product.product_id)
        
        if product_id in self.cart:
            self.cart[product_id] += 1
        else:
            self.cart[product_id] = int(quantity)
        self.session.modified = True
        
        self.update_cart_db()
         
    # Tổng số lượng sản phẩm trong giỏ hàng
    def __len__(self):
        qty = 0
        for value in self.cart.values():
            qty += int(value)
        return qty
    
    def get_products(self):
        product_ids = self.cart.keys()
        products = Product.objects.filter(product_id__in=product_ids)
        return products
    
    def get_cart(self):
        return self.cart
    
    def update(self, product, quantity):
        product_id = str(product)
        product_qty = int(quantity)
        
        cart = self.cart
        
        cart[product_id] = product_qty
        
        self.session.modified = True
        
        self.update_cart_db()
        
        thing = self.cart
        return thing

    def delete(self, product):
        product_id = str(product)
        
        if product_id in self.cart: 
            del self.cart[product_id]
        
        self.session.modified = True
        
        self.update_cart_db()

    def reset_cart(self):
        self.session['session_key'] = {}
        self.session.modified = True
        
    def db_add(self, product, quantity):
        product_id = str(product)
        
        if product_id in self.cart:
            pass
        else:
            self.cart[product_id] = int(quantity)
        self.session.modified = True
        
        self.update_cart_db()
    
    # Lấy tổng tiền của từng sản phẩm
    def get_products_price(self):
        total_of_cart = {}
        
        product_ids = self.cart.keys()
        
        products = Product.objects.filter(product_id__in=product_ids)
        
        for key, value in self.cart.items():
            key = int(key)
            
            for product in products:
                if product.product_id == key:
                    product_price = product.price * value 
                    total_of_cart[str(key)] = int(product_price)
                    
        return total_of_cart
    
    # Lấy tổng tiền của 1 sản phẩm
    def get_product_price(self, product_id):
        product = Product.objects.get(product_id=product_id)
        price = product.price
        quantity = self.cart[str(product.product_id)]
        return int(price) * int(quantity)
    
    # Lấy tổng giá trị của giỏ hàng
    def get_total(self, total_of_product): 
        total = 0
    
        for product_total in total_of_product.values():
            total += int(product_total)
            
        return total
    
    def update_cart_db(self):
        if self.request.user.is_authenticated:
            current_user = UserProfile.objects.filter(user__id=self.request.user.id)
            carty = str(self.cart)
            
            carty = carty.replace("\'", "\"")
            
            current_user.update(old_cart=carty)
            
