
function addItemToCart(node)
{


    var productid = node.previousElementSibling.previousElementSibling.previousElementSibling.previousElementSibling.value;

    $.post('cart', {
        "productID" : productid

    }, function(data,state) {

        //do something
        if(data.match(new RegExp("\^success")) != null){
            var noOfItemsInCart = data.match(new RegExp("[0-9]+"))[0];
            $('.badge').text(noOfItemsInCart);
            var parent = $(node).parent();
            $(node).prop('disabled', true);
            $(node).remove();

            parent.append("<i class=\"fa fa-check-circle fa-2x\" aria-hidden=\"true\" style=\"color: limegreen;\"></i>")
        }else{
            window.location.href = "http://localhost:8040/neat_feet_war_exploded/login";
        }
    })

}
/**
 *
 *.fail(function() {
        alertify.error('error in connection....');
        sleep(1500).then(() => {
            location.reload(true);
        });
    });
 * */

function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}