$(document).ready(function() {
    // Thực hiện Ajax
    $('.btn_category').click(function() {
        var component = $(this).data('component');
        $.ajax({
            url: "get_products/" + component + "/",
            type: 'GET',
            dataType: 'json',
            success: function(data) {
                var productHTML = '';
                $.each(data, function(index, product) {
                    console.log(product)
                    productHTML += '<div class="col-sm-4 product">';
                    productHTML += '<a href="/product/'+ product.slug + '.p-' + product.product_id + '">';
                    productHTML += '<img src="/  static/image/product/' + product.img_url + '" alt="img_product" class="img_product">';
                    productHTML += '<h4>' + product.product_name + '</h4>';
                    productHTML += '<div class="cost">' + product.price + '₫</div>';
                    productHTML += '</a>';
                    productHTML += '<button type="button" value="' + product.product_id + '" class="btn btn-secondary" id="add_cart">';
                    productHTML += 'Thêm vào giỏ hàng';
                    productHTML += '</button>';
                    productHTML += '</div>';
                });

                $('.product_container').html(productHTML);
            }
        });
    });
});

// Chuyển đổi URL thành dạng thích hợp
function encodeURL(inputString) {
    return inputString.replace(/ /g, '%20');
}
