/*
$(document).ready(function () {


        var jsonData = {"email": email, "message": msg};
        $.ajax({url: 'user', //servlet url
            type: 'GET'//servlet request type
            contentType: 'application/json', //For input type
            data: jsonData, //input data
            dataType: 'json', //For output type
            success: function (data) {
                console.log(data);

}
});
*/


/*
function getuserinfo(useremail) {
    //console.log(useremail);
    alert("hjakhfk");
    $.post("user?useremail="+useremail+"",

    function(data,state) {
        alert(data);
         $("#name").val(data.name);
         $("#email").val(data.email);
         $("#phone").val(data.phone);

        });

}

*/
function getuserinfo(pid){
    console.log(pid);
    alert(pid)
    var productid = pid;
    $.ajax({
        url:"user",
        type:"POST",
        data: {'id':productid},
        dataType:'json',
        success: function (data) {
            alert("ok");
            $('#name').val(data.name);
            $('#email').val(data.email);
            $('#phone').val(data.phone);
            $('#brand').val(data.brand);
            $('#price').val(data.price);
            $('#quantity').val(data.quantity);
            $('#buyingCount').val(data.buyingCount);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown);
            alert("error")
        }
    });

}


function test() {
    $.post("user",

        function(data,state) {
            alert(data);
        });

}