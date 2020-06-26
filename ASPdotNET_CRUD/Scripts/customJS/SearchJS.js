$(document).ready(function () {
    console.log("System Started!");

    $(document).delegate('#searchbuttn', 'click', function (e) {
        //e.preventDefault();
        //console.log(this.value);
        var ID = '%' + $('#inputstr').val()+'%';
        console.log(ID);
        if (ID != '%%') {

            var _dbModel = {
                'AddedBy': ID,
            };
            $.ajax({
                type: "POST",
                url: "/Search/SearchALL",
                data: JSON.stringify(_dbModel),
                contentType: "application/json",
                datatype: "json",
                async: false,
                success: function (data) {
                    //console.log(data);
                    tableAppend(data);

                },
                error: function () {
                    console.log("data not retrieved!");
                }
            });
        }
        else {
            $.notify(" Enter Item! ", "error");
        }
    });

 


    function tableAppend(data) {
        $("#tblBlog2").empty();
        $("#corona-data").empty();


        var txt2 = '<h5>Showing Results for "' + $('#inputstr').val() + '"</h5><br>';
        var count = 0;
        $.each(data, function (i, item) {

            txt2 += '<div class="jumbotron">' +
                '<div class="media border p-3">' +
                '<div class="media-body">' +
                '<h3 class="text-primary">' + item.title + '</h3>' +
                '<h5><small><i>Updated on ' + item.DateAdded + '</i></small></h5>' +
                '<p>' + item.description + '</p>' +
                '</div>' +
                '</div>' +
                '</div>';
            count = count + 1;

        });

        if (count == 0) {
            txt2 ='<br><h4 style="color:red;">No Result!</h4>'
        }

        //alert(txt);
        $("#corona-data").append(txt2);
    }

    

    //ready function
});

