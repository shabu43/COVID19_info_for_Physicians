$(document).ready(function () {
    console.log("System Started!");
    
    LoadGridData();
    var input = document.getElementById("inputstr");

    // Execute a function when the user releases a key on the keyboard
    input.addEventListener("keyup", function (event) {
        // Number 13 is the "Enter" key on the keyboard
        if (event.keyCode === 13) {
            // Cancel the default action, if needed
            event.preventDefault();
            // Trigger the button element with a click
            document.getElementById("searchbuttn").click();
        }
    });

    $(document).delegate('#searchbuttn', 'click', function (e) {
        //e.preventDefault();
        //console.log(this.value);
        var query = $('#inputstr').val();

            if (query != '') {

                var _dbModel = {
                    'query': query,
                };
                $.ajax({
                    type: "POST",
                    url: "/Forum/Add",
                    data: JSON.stringify(_dbModel),
                    contentType: "application/json",
                    datatype: "json",
                    async: false,
                    success: function (data) {
                        //console.log(data);
                        if (data.success == false) {
                            $.notify(" PLease Login First!! ", "error");
                        }
                        else {
                            $.notify(" Posted Successfully.. ", "success");
                            LoadGridData();
                        }

                    },
                    error: function () {
                        console.log("data not retrieved!");
                    }
                });
            }
            else {
                $.notify(" Enter Queries! ", "error");
            }
        
    });

 
    function LoadGridData() {
        $.ajax({
            type: "POST",
            url: "/Forum/SearchALL",
            //data: JSON.stringify(_dbModel),
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

    function tableAppend(data) {
        $("#tblBlog2").empty();
        $("#corona-data").empty();


        var txt2 = '<br><br><h4>Previous Feed</h4>';
        var count = 0;
        $.each(data, function (i, item) {

            txt2 += '<div class="jumbotron">' +
                '<div class="media border p-3">' +
                '<div class="media-body">' +
                '<h3 class="text-primary">' + item.name + '</h3>' +
                '<h5><small><i>Posted on ' + item.DateAdded + '</i></small></h5>' +
                '<p>' + item.query + '</p>' +
                '</div>' +
                '</div>' +
                '</div>';
            count = count + 1;

        });

        if (count == 0) {
            txt2 +='<br><h4 style="color:red;">No Result!</h4>'
        }

        //alert(txt);
        $("#corona-data").append(txt2);
    }

    

    //ready function
});

