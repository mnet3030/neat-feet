

function pluse(btn) {
    var id=btn.previousElementSibling.previousElementSibling.previousElementSibling.value;
    $.post("checkout?action=increase&productid="+id+"",
        function (data,state) {

            var divUpd = $(btn).parent().find('.value'),
                newVal = parseInt(divUpd.val(), 10) + 1;

            if(divUpd.attr("max")>=newVal) {
                divUpd.val(newVal);
                $(this).parents('tr').find('.quantityOfUnit').text(" * " +newVal);
                var price=$(this).parents('tr').find('.priceOfUnit').text().split(" ");
                $(this).parents('tr').find('.totalPriceOfUint').text("= " +(newVal*price[0])+" EGP");
            }

            $("#totalprice").html(data.totalPrice+" EGP");
            $("#afterAddServices").html(data.totalPrice+" EGP");
            $('.badge').text(data.size);


        }).fail(function() {
        alertify.error('error in connection....');
        sleep(1500).then(() => {
            location.reload(true);
        });



    });
}
function minus(btn) {
    var id=btn.previousElementSibling.value;

    $.post("checkout?action=decrease&productid="+id+"",
        function (data,state) {




            var divUpd = $(btn).parent().find('.value'),
                newVal = parseInt(divUpd.val(), 10) - 1;
            if (newVal >= 1) {
                divUpd.val(newVal);
                $(this).parents('tr').find('.quantityOfUnit').text(" * " +newVal)
                var price=$(this).parents('tr').find('.priceOfUnit').text().split(" ");
                $(this).parents('tr').find('.totalPriceOfUint').text("= " +(newVal*price[0])+" EGP");

            }


            $("#totalprice").html(data.totalPrice+" EGP");
            $("#afterAddServices").html(data.totalPrice+" EGP");
            $('.badge').text(data.size);

        }).fail(function() {
        alertify.error('error in connection....');
        sleep(1500).then(() => {
            location.reload(true);
        });



    });

}



function remove(id) {

    $.post("checkout?action=delete&productid="+id+"",
        function (data,state) {

            $("#totalprice").html(data.totalPrice+" EGP");
            $("#afterAddServices").html(data.totalPrice+" EGP");
            $('.badge').text(data.size);
        }).fail(function() {
        alertify.error('error in connection....');
        sleep(1500).then(() => {
            location.reload(true);
        });



    });

}
function buy() {
    // alert("here")
    $.post("checkout?action=buy",
        function (data,state) {
            if(data=="success"){
                setTimeout(function(){

                    alertify.success('Successfull Operation.');
                }, 1000);

                sleep(3000).then(() => {
                    window.location.href = "http://localhost:9050/neat_feet_war_exploded/login";
                });

            }
            else {

                setTimeout(function(){

                    alertify.error(data);
                }, 1000);


            }
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