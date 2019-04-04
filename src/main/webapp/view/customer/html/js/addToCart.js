
function addItemToCart(node)
{


    var productid = node.previousElementSibling.previousElementSibling.previousElementSibling.previousElementSibling.value;

    $.post('cart', {
        "productID" : productid

    }, function(data,state) {

        //do something

        $('.badge').text(data);
       // items=(parseInt($('.badge').text())+1);

    });

}