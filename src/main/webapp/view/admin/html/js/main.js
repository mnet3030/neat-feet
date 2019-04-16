$(document).ready(function(){
    var x=document .querySelector('.material-icons')[0];
    var y=x.prev().prev().prev().innerHTML;
    console.log(x);
    console.log(y);

        // Activate tooltip
        $('[data-toggle="tooltip"]').tooltip();

        // Select/Deselect checkboxes
        var checkbox = $('table tbody input[type="checkbox"]');
        $("#selectAll").click(function(){
            if(this.checked){
                checkbox.each(function(){
                    this.checked = true;
                });
            } else{
                checkbox.each(function(){
                    this.checked = false;
                });
            }
        });
        checkbox.click(function(){
            if(!this.checked){
                $("#selectAll").prop("checked", false);
            }
        });
    });


    $(document).ready(function(){


        var x=document .querySelector('.material-icons')[0];
        var y=x.prev().prev().prev().innerHTML;
        console.log(x);
        console.log(y);
       // this.click(function(){
       //      // if(!this.checked){
       //      //     $("#").prop("checked", false);
       //      // }
       //     console.log(y)
       //  });
    });

function userEmail(useremail){

    console.log(useremail);


}

