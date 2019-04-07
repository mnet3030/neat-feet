jQuery(document).ready(function($){

    $('#left-search-form').on('submit', submitSearchForm);

    $('#leftSearch').on("keypress", function (ev) {
        if(ev.which == 13) {
            $('#leftSearchBtn').click();
        }
    });

    function submitSearchForm() {
        window.location.href ='result?search=' + $('#leftSearch').val();
        return false;
    }



});