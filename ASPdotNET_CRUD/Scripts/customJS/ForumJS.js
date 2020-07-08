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
    // reeeeeeeeeeeplyyyyyyyyyy
    $(document).delegate('#btnEdit', 'click', function (e) {
        e.preventDefault();
        //console.log(this.value);
        var ID = this.value;
        console.log(ID);
        var _dbModel = {
            'id': ID,
        };
        $('#EditId').val(ID);
    });
    $(document).delegate('#btnSave', 'click', function (e) {
        e.preventDefault();
        var ID = $('#EditId').val();
        var desc = $("#EditDescription").val();
        if (desc != '') {
            var _dbModel = {
                
                'postid': ID, 'reply': desc,
            };
            //console.log(_dbModel);
            $.ajax({
                type: "POST",
                url: "/Forum/AddReply",
                data: JSON.stringify(_dbModel),
                contentType: "application/json",
                datatype: "json",
                async: false,
                success: function (data) {
                    //alert("!");
                    $('#editModal').modal('toggle');
                    $('#EditDescription').val("");
                    if (data.success == true) {
                        LoadGridData();
                        $.notify(" Data Updated Successfully.. ", "success");
                    }
                    else {
                        $.notify(" Login First..! ", "error");
                    }
                },
                error: function () {
                    $.notify(" Oops Something Went Wrong..! ", "error");
                }
            });
        }
        else {
            $.notify(" Please Enter item..! ", "error");
        }
    });
    $(document).delegate('#btnDelete', 'click', function (e) {
        e.preventDefault();
        var ID = this.value;
        console.log(ID);
        var ans = confirm("Are you sure to delete a record");
        if (ans == true) {
            var _dbModel = {
                'id': ID,
            };
            $.ajax({
                type: "POST",
                url: "/Forum/DeleteBlog",
                data: JSON.stringify(_dbModel),
                contentType: "application/json",
                datatype: "json",
                success: function (data) {
                    if (data.success == true) {
                        LoadGridData();
                        $.notify(" Data Deleted Successfully.. ", "success");
                    }
                    else {
                        $.notify(" Data Deleted Failed..! ", "error");
                    }
                }
            });
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
        var txtreply;
        $.each(data, function (i, item) {

            txtreply=tableAppendreply(item.id);
            txt2 += '<div class="jumbotron">' +
                '<div class="media border p-3">' +
                '<img src="https://www.w3schools.com/bootstrap4/img_avatar2.png" alt="img" class="mr-3 mt-3 rounded-circle" style="width:60px;">'+
                '<div class="media-body">' +
                '<h3 class="text-primary">' + item.name + '</h3>' +
                '<h5><small><i>Posted on ' + item.DateAdded + '</i></small></h5>' +
                '<p>' + item.query + '</p>' +
                '<button value="' + item.id + '" type="button" id="btnEdit" class="btn btn-sm btn-info" data-toggle="modal" data-target="#editModal">Reply</button><br>'+
                '<div style="padding-left:55px";class="media p-3">' +
                txtreply+
                '</div>'+  
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

    function tableAppendreply(ID) {
        var txt3 = '';
        var _dbModel = {
            'postid': ID,
        };
        $.ajax({
            type: "POST",
            url: "/Forum/getReply",
            data: JSON.stringify(_dbModel),
            contentType: "application/json",
            datatype: "json",
            async: false,
            success: function (data1) {
                //console.log(data);

                
                var count = 0;
                $.each(data1, function (i, item1) {

                    txt3 += '<br><img src="https://www.w3schools.com/bootstrap4/img_avatar3.png" alt="rimg" class="mr-3 mt-3 rounded-circle" style="width:45px;">'+

                        '<div class="media-body">' +
                        '<h3 class="text-primary">' + item1.name + '</h3>' +
                        '<h5><small><i>Posted on ' + item1.DateAdded + '</i></small></h5>' +
                        '<p>' + item1.reply + '</p>' +
                        '</div>';
                    count = count + 1;

                });

                if (count == 0) {
                    txt3 = ''
                }

                //alert(txt3);
                
            },
            error: function () {
                console.log("data not retrieved!");
            }
        });
        return txt3;

    }

    //ready function
});

