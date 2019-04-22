

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
        Swal.fire({
            type: 'error',
            title: 'Oops...',
            text: 'Something went wrong!',
            footer: '<a href>Why do I have this issue?</a>',
            allowOutsideClick:false
        });
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
        Swal.fire({
            type: 'error',
            title: 'Oops...',
            text: 'Something went wrong!',
            footer: '<a href>Why do I have this issue?</a>',
            allowOutsideClick:false
        });
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
        Swal.fire({
            type: 'error',
            title: 'Oops...',
            text: 'Something went wrong!',
            footer: '<a href>Why do I have this issue?</a>',
            allowOutsideClick:false
        });
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
            if(data.match(new RegExp("\^success")) != null){
                setTimeout(function(){
                    Swal.fire({
                        type: 'success',
                        title: 'Payment successful',
                        text: 'Congratulations',
                        allowOutsideClick:false
                    });
                }, 1000);

                sleep(3000).then(() => {
                    window.location.href = appContext + "/home";
                });

            }
            else {

                setTimeout(function(){

                    Swal.fire({
                        type: 'error',
                        title: 'Oops...',
                        text: 'Something went wrong!',
                        footer: '<a href>Why do I have this issue?</a>',
                        allowOutsideClick:false
                    });
                    $("#buybutton").attr("disabled", false);
                }, 1000);


            }
        }).fail(function() {
        Swal.fire({
            type: 'error',
            title: 'Oops...',
            text: 'Something went wrong!',
            footer: '<a href>Why do I have this issue?</a>',
            allowOutsideClick:false
        });
        sleep(1500).then(() => {
            location.reload(true);
        });

    });
}


function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}