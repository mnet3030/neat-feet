


    /*function simpleTemplating(data) {
        var html = '<ul>';
        $.each(data, function(index, item){
            html += '<li>'+ item +'</li>';
        });
        html += '</ul>';
        return html;
    }
    var generateData = function(number) {
        var result = [];

        for (var i = 1; i < number + 1; i++) {
            result.push(i);
        }

        return result;
    };

    $('#pagination-container').pagination({
        dataSource: generateData(10),
        pageSize: 5,
        totalNumber: 120,
    callback: function(data, pagination) {
        var html = simpleTemplating(data);
        $('#data-container').html(html);
    }
});
});*/