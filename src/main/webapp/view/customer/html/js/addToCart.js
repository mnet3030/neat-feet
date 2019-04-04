

function addItemToCart(node)
{


    var productid = node.previousElementSibling.previousElementSibling.previousElementSibling.previousElementSibling.value;

    $.post('cart', {
        "productID" : productid

    }, function() {

        //do something

    });

}