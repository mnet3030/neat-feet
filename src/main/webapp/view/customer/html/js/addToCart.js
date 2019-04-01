

function addItemToCart(r)
{
    var productid = r.previousElementSibling.previousElementSibling.previousElementSibling.previousElementSibling.value;
    $.post('cart', {
        "productID" : productid,
        "check" : "buy"

    }, function( qunatity) {

       //do somthing here

    });

}