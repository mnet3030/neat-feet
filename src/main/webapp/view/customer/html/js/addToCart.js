

$('.badge').text(parseInt(item));
function addItemToCart(node)
{


    var productid = node.previousElementSibling.previousElementSibling.previousElementSibling.previousElementSibling.value;

    $.post('cart', {
        "productID" : productid

    }, function() {

        //do something

        $('.badge').text((parseInt($('.badge').text())+1));
        items=(parseInt($('.badge').text())+1);

    });

}