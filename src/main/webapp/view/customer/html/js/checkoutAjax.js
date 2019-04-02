
$("#totalprice").val("545"+" EGP");
function pluse(btn) {
    var id=btn.previousElementSibling.previousElementSibling.previousElementSibling.value;
    $.post("checkout?action=increse&productid="+id+"",
        function (data,state) {
            $("#totalprice").html(data+" EGP");

        });

    }
function minus(btn) {
    var id=btn.previousElementSibling.value;

    $.post("checkout?action=decrease&productid="+id+"",
        function (data,state) {
            $("#totalprice").html(data+" EGP");
        });

}
