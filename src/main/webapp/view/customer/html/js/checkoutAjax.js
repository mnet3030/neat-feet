
function pluse(btn) {
    var id=btn.previousElementSibling.previousElementSibling.previousElementSibling.value;
    $.post("checkout?action=increase&productid="+id+"",
        function (data,state) {
            $("#totalprice").html(data.totalPrice+" EGP");
            $("#afterAddServices").html(data.totalPrice+" EGP");
            $('.badge').text(data.size);

        });

}
function minus(btn) {
    var id=btn.previousElementSibling.value;

    $.post("checkout?action=decrease&productid="+id+"",
        function (data,state) {


            $("#totalprice").html(data.totalPrice+" EGP");
            $("#afterAddServices").html(data.totalPrice+" EGP");
            $('.badge').text(data.size);

        });

}

function remove(id) {

    $.post("checkout?action=delete&productid="+id+"",
        function (data,state) {

            $("#totalprice").html(data.totalPrice+" EGP");
            $("#afterAddServices").html(data.totalPrice+" EGP");
            $('.badge').text(data.size);
        });

}
