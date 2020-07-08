$(document).ready(function () {
    console.log("System Started!");
    LoadGridData();
    $(document).delegate('#kendoToggler', 'click', function (e) {
        $('.toggleDiv').toggle();
    });
    $(document).delegate('#btnAddNew', 'click', function (e) {
        $('#addBlogModal').modal('toggle');
    });
    $(document).delegate('#btnEdit', 'click', function (e) {
        e.preventDefault();
        //console.log(this.value);
        var ID = this.value;
        console.log(ID);
        var _dbModel = {
            'id': ID,
        };
        $.ajax({
            type: "POST",
            url: "/Instructions/LoadSelectedBlog",
            data: JSON.stringify(_dbModel),
            contentType: "application/json",
            datatype: "json",
            async: false,
            success: function (data) {
                //console.log(data);
                $('#EditId').val(ID);
                $('#EditAuthor').text("");
                $('#EditDate').text("");
                $('#EditDate').text(data[0].DateAdded);
                $('#EditAuthor').text(data[0].AddedBy);
                $('#EditTitle').val(data[0].title);
                $('#EditDescription').val(data[0].description);
            },
            error: function () {
                console.log("data not retrieved!");
            }
        });
    });
    $(document).delegate('#btnSave', 'click', function (e) {
        e.preventDefault();
        var ID = $('#EditId').val();
        var ttl = $("#EditTitle").val();
        var desc = $("#EditDescription").val();
        var _dbModel = {
            'id': ID, 'title': ttl, 'description': desc,
        };
        //console.log(_dbModel);
        $.ajax({
            type: "POST",
            url: "/Instructions/Update",
            data: JSON.stringify(_dbModel),
            contentType: "application/json",
            datatype: "json",
            async: false,
            success: function (data) {
                //alert("!");
                $('#editModal').modal('toggle');
                $('#EditTitle').val("");
                $('#EditDescription').val("");
                if (data.success == true) {
                    LoadGridData();
                    $.notify(" Data Updated Successfully.. ", "success");
                }
                else {
                    $.notify(" Data Updation Failed..! ", "error");
                }
            },
            error: function () {
                $.notify(" Oops Something Went Wrong..! ", "error");
            }
        });
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
                url: "/Instructions/DeleteBlog",
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

    $("#signupbtn").click(function (e) {
        // e.preventDefault();
        var name = $("#name").val();
        var email = $("#email").val();
        var password = $("#password").val();
        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

        if (name == '') {
            $.notify(" Enter Name..! ", "error");

        }
        else if (reg.test(email) == false) {
            $.notify(" Enter valid Email..! ", "error");
        }
        else if (password == '') {
            $.notify(" Enter Password..! ", "error");
        }

        else {
            var _dbModel = {
                'name': name, 'email': email, 'password': password,
            };

        $.ajax({
            type: "POST",
            url: "/Login/Verify",
            data: JSON.stringify(_dbModel),
            contentType: "application/json",
            datatype: "json",
            async: false,
            success: function (data) {
                var check = null;
                $.each(data, function (i, item) {
                    check = item.id;
                });
                if (check != null) {
                    $.notify(" User Already exist! ", "error");
                }
                if (check == null) {
                    signup();
                };

            },
            error: function () {
                $.notify(" Data Addition Failed..! ", "error");
            }
        });

    }
    });


    function signup() {
        var name = $("#name").val();
        var email = $("#email").val();
        var password = $("#password").val();

        var _dbModel = {
            'name': name, 'email': email, 'password': password,
        };
        $.ajax({
            type: "POST",
            url: "/Login/Add",
            data: JSON.stringify(_dbModel),
            contentType: "application/json",
            datatype: "json",
            async: false,
            success: function (data) {
                //alert("!");
                $('#addBlogModal').modal('toggle');
                $('#name').val("");
                $('#email').val("");
                $('#password').val("");
                LoadGridData();
                document.getElementsByClassName("cancelbtn")[0].click();
                $.notify(" Successfully Done.. ", "success");
            },
            error: function () {
                $.notify(" Signup Failed..! ", "error");
            }
        });
    }
    $(document).delegate('#loginbtn', 'click', function (e) {
        e.preventDefault();

        var email = $("#emaillog").val();
        var password = $("#passwordlog").val();
        if (email == '') {
            $.notify(" Enter Email..! ", "error");
           
        }
        else if (password == '') {
            $.notify(" Enter Password..! ", "error");
        }
        else {
            var _dbModel = {
                'email': email, 'password': password,
            };

        $.ajax({
            type: "POST",
            url: "/Login/GetAll",
            data: JSON.stringify(_dbModel),
            contentType: "application/json",
            datatype: "json",
            async: false,
            success: function (data) {
                if (data.success == true) {
                    history.back();
                }
                else {
                    $.notify(" Login Failed..! ", "error");
                }


            },
            error: function () {
                $.notify(" LoginData Failed..! ", "error");
            }
        });
    }
    });
    
    //$("#loginbtn").click(function (e) {
    //    // e.preventDefault();
        

    //    var email = $("#email").val();
    //    var password = $("#password").val();

    //    var _dbModel = {
    //        'email': email, 'password': password,
    //    };

    //    $.ajax({
    //        type: "POST",
    //        url: "/Login/GetAll",
    //        data: JSON.stringify(_dbModel),
    //        contentType: "application/json",
    //        datatype: "json",
    //        async: false,
    //        success: function (data) {
    //            alert(data);
                
    //           //// window.location.replace("http://localhost:52073/");
                
    //        },
    //        error: function () {
    //            $.notify(" Data Addition Failed..! ", "error");
    //        }
    //    });
    //});

    function LoadGridData() {
        $.ajax({
            type: "GET",
            url: "/Instructions/GetAll",
            //data: JSON.stringify(_dbModel),
            contentType: "application/json",
            datatype: "json",
            async: false,
            success: function (data) {
                //console.log(data);
                BindGridData(data);
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


        var txt2 = '<br>';
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


        });

        //alert(txt);
        $("#corona-data").append(txt2);
    }

    function BindGridData(data) {
        $("#tblBlog").kendoGrid().empty();
        $("#tblBlog").kendoGrid({
            dataSource: {
                data: data,
                dataType: "json",
            },
            toolbar: "<a id='btnAddNew' role='button' class='k-button k-button-icontext k-grid-add' href='javascript:void(0)'><span class='k-icon k-i-plus'></span>Add New Record</a>",
            columns: [

                { field: "id", title: "ID", hidden: true, filterable: true },
                { field: "title", title: "Title", filterable: true },
                { field: "description", title: "Details", filterable: true },
                { field: "AddedBy", title: "Author", filterable: true },
                { field: "DateAdded", title: "Date", filterable: true },

                {
                    field: "id",
                    template: '<a role="button" class="k-button k-button-icontext k-grid-edit" href="javascript:void(0)" onclick=LoadEditData(#=id#)><span class="k-icon k-i-edit"></span>Edit</a>' +
                        '<a role="button" class="k-button k-button-icontext k-grid-delete" " href="javascript:void(0)" onclick=DeleteBlog(#=id#)><span class="k-icon k-i-close"></span>Delete</a>',

                    title: "Action",
                    width: 170,
                    headerAttributes: { style: "text-align: center" },
                    attributes: { class: "text-center" },
                    filterable: false
                },
            ],
            sortable: true,
            filterable: {
                extra: false, //do not show extra filters
                operators: { // redefine the string operators
                    string: {
                        contains: "Contains",
                        startswith: "Starts With",
                        eq: "Is Equal To"
                    }
                }
            },
            resizable: true,
            height: 450,
            pageable: false,
            scrollable: true
        });
    }

    //ready function
});
function DeleteBlog(id) {
    var ans = confirm("Are you sure to delete a record");
    if (ans == true) {
        var _dbModel = { 'id': id };
        console.log(_dbModel);
        $.ajax({
            type: "POST",
            url: "/Instructions/DeleteBlog",
            data: JSON.stringify(_dbModel),
            contentType: "application/json",
            datatype: "json",
            success: function (data) {
                if (data.success == true) {
                    LoadGridData();
                    $.notify("Data Deleted Successfully..", "success");
                }
                else {
                    $.notify("Data Deleted Failed..!", "error");
                }
            }
        });
    }
}

function LoadEditData(id) {
    // e.preventDefault();
    console.log(id);
    var _dbModel = {
        'id': id,
    };
    //console.log(_dbModel);
    $.ajax({
        type: "POST",
        url: "/Instructions/LoadSelectedBlog",
        data: JSON.stringify(_dbModel),
        contentType: "application/json",
        datatype: "json",
        async: false,
        success: function (data) {
            //console.log(data);
            $('#editModal').modal('toggle');
            $('#EditId').val("");
            $('#EditAuthor').text("");
            $('#EditDate').text("");

            $('#EditId').val(data[0].id);
            $('#EditDate').text(data[0].DateAdded);
            $('#EditAuthor').text(data[0].AddedBy);
            $('#EditTitle').val(data[0].title);
            $('#EditDescription').val(data[0].description);
        },
        error: function () {
            console.log("data not retrieved!");
        }
    });
}

