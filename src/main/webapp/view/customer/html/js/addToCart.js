

function addItemToCart(node)
{
    alert("dfdfjk");

    var productid = node.previousElementSibling.previousElementSibling.previousElementSibling.previousElementSibling.value;
    alert(productid);
    $.post('cart', {
        "productID" : productid

    }, function() {

        alert("Done ISA");

    });

}