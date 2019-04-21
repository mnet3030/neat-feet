
function addItemToCart(node)
{


    var productid = node.previousElementSibling.previousElementSibling.previousElementSibling.previousElementSibling.value;

    $.post('cart', {
        "productID" : productid

    }, function(data,state) {

        //do something
        if(data.localeCompare("notlogged")==0){
            window.location.href = "http://localhost:9050/neat_feet_war_exploded/login";
        }else{
            $('.badge').text(data);
            $(node).attr("disabled", true);
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