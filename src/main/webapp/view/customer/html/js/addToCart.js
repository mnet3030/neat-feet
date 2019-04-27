
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
            Swal.fire({
                type: 'error',
                title: 'Oops...',
                text: 'You must be logged in first!',
                footer: '<a href>Why do I have this issue?</a>',
                allowOutsideClick:false
            });
            setTimeout(function(){
                window.location.href = appContext + "/login";
            }, 2000);

        }
    }).fail(function() {
        Swal.fire({
            type: 'error',
            title: 'Oops...',
            text: 'Something went wrong!',
            footer: '<a href>Why do I have this issue?</a>',
            allowOutsideClick:false
        });
    });
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
}