
function deleteRowFromDB(node)
{
    var productID = node.previousElementSibling.previousElementSibling.value;

    var jsonOBJ = {"productID" : productID , "action" : "delete"};

    $.ajax({

        url:"productServlet",
        type:"POST",
        data: jsonOBJ,
        dataType: 'text',

        success: function (data, textStatus, jqXHR) {

            console.log("Done Ya Amer");

        },

        error: function (jqXHR, textStatus, errorThrown) {

            console.log(errorThrown);
        }
    });

}

function addRowToDB()
{

    var jsonOBJ = {"action" : "add"};

    $.ajax({

        url:"productServlet",
        type:'POST',
        data: jsonOBJ,
        //dataType: 'text',

        success: function (data, textStatus, jqXHR) {

            console.log("Done Ya Amer");

        }
        //
        // error: function (jqXHR, textStatus, errorThrown) {
        //
        //     console.log(errorThrown);
        // }
    });

}


function searchFun() {

    var productName = $("#searchInput").val();
    var jsonOBJ = {"action": "search", "productName": productName};

    alert(productName);
    $.ajax({

        url: "productServlet",
        type: "GET",
        data: jsonOBJ,
        dataType: "text",

        success: function (data, textStatus, jqXHR) {

            console.log("Done ISA");

        },

        error: function (jqXHR, textStatus, errorThrown) {

            console.log(errorThrown);
        }
    });

}


// function searchProductbyName()
// {
//
//     var productName = $("#searchInput").val();
//     var jsonOBJ = {"action" : "search" , "productName" : productName};
//
//     $.ajax({
//
//         url:"productServlet",
//         type:"POST",
//         data: jsonOBJ,
//         dataType: 'text',
//
//         success: function (data, textStatus, jqXHR) {
//
//             console.log(data);
//
//         },
//
//         error: function (jqXHR, textStatus, errorThrown) {
//
//             console.log(errorThrown);
//         }
//     });
//
// }
//
//


