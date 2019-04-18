
function addItemToCart(node)
{


    var productid = node.previousElementSibling.previousElementSibling.previousElementSibling.previousElementSibling.value;

    $.post('cart', {
        "productID" : productid

    }, function(data,state) {

        //do something
        $('.badge').text(data);

    }).fail(function() {
        alertify.error('error in connection....');
        sleep(1500).then(() => {
            location.reload(true);
        });
    });

}

function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}