
function pluse(btn) {
    var id=btn.previousElementSibling.previousElementSibling.previousElementSibling.value;
    $.post("checkout?action=increase&productid="+id+"",
        function (data,state) {
            $("#totalprice").html(data+" EGP");
            $("#afterAddServices").html(data+" EGP");

        });

}
function minus(btn) {
    var id=btn.previousElementSibling.value;

    $.post("checkout?action=decrease&productid="+id+"",
        function (data,state) {
            $("#totalprice").html(data+" EGP");
            $("#afterAddServices").html(data+" EGP");
        });

}

function remove(id) {

    $.post("checkout?action=delete&productid="+id+"",
        function (data,state) {
            $("#totalprice").html(data+" EGP");
            $("#afterAddServices").html(data+" EGP");

        });

}
