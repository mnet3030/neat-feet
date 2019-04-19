

function pluse(btn) {
    var id=btn.previousElementSibling.previousElementSibling.previousElementSibling.value;
    $.post("checkout",{
            "action":'increase',
            "productid":id},
        function (data,state) {

            var divUpd = $(btn).parent().find('.value'),
                newVal = parseInt(divUpd.val(), 10) + 1;

            if(divUpd.attr("max")>=newVal) {
                divUpd.val(newVal);
                $(btn).parents().eq(3).find('.quantityOfUnit').text(" * " +newVal)
                var price=$(btn).parents().eq(3).find('.priceOfUnit').text().split(" ");
                $(btn).parents().eq(3).find('.totalPriceOfUint').text("= " +(newVal*price[0])+" EGP");
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

    $.post("checkout",{'action':'decrease','productid':id},
        function (data,state) {




            var divUpd = $(btn).parent().find('.value'),
                newVal = parseInt(divUpd.val(), 10) - 1;
            if (newVal >= 1) {
                divUpd.val(newVal);
                $(btn).parents().eq(3).find('.quantityOfUnit').text(" * " +newVal)
                var price=$(btn).parents().eq(3).find('.priceOfUnit').text().split(" ");
                $(btn).parents().eq(3).find('.totalPriceOfUint').text("= " +(newVal*price[0])+" EGP");

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

    $.post("checkout",{'action':'deletep', 'productid':id},
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
    $("#buybutton").attr("disabled", true);
    $.post("checkout",{'action':'buy'},
        function (data,state){
            if(data.localeCompare("success")){
                setTimeout(function(){

                    alertify.success('Successfull Operation.');
                }, 1000);

                sleep(3000).then(() => {
                    window.location.href = "http://localhost:9050/neat_feet_war_exploded/home";
                });

            }
            else {

                setTimeout(function(){

                    alertify.error(data);
                    $("#buybutton").attr("disabled", false);
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