

function addItemToCart(r)
{
    alert("dfdfjk");

    var productid = r.previousElementSibling.previousElementSibling.previousElementSibling.previousElementSibling.value;
    alert(productid);
    $.post('cart', {
        "productID" : productid,
        "check" : "buy"

    }, function( qunatity) {

        alert(qunatity);

    });

}