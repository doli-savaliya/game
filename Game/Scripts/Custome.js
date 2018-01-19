$(document).ready(function () {
    $("#gamelist").hide();
    Loadgrid();
    $("#countryid").change(function () {
        if ($("#countryid").val() != "") {
            Bindstate($("#countryid").val());
        }
        else
        {
            $("#stateid").empty();
        }
    })
    $("#stateid").change(function () {
        if ($("#stateid").val() != "") {
            BindCity($("#stateid").val());
        }
        else {
            $("#cityid").empty();
        }
    })
    $("#GametypeID").change(function () {
        if ($("#GametypeID").val() != "") {

            BindGamelist($("#GametypeID").val());
        }
        else {

            $("#gametypelist").empty();
        }
    })
    

    if ($('#GameName').val().length > 0) {
        var selectedGametypeID = $('#GametypeID').find(":selected").val();
        BindGamelist(selectedGametypeID);
        setTimeout(function () {
            $("#gamelist").show();
            var array = $('#GameName').val().split(",");
            $.each(array, function (i) {
            $('input[name="gamelist"]:not(:checked)').each(function () {
                    if (array[i] == $(this).attr("data-text")) {
                        $(this).prop('checked', true);
                    }
                });
            });
        },700);
    }

   
});
/*loop of list and sepreate*/
getGameList = function () {
    var list = "";
    $("#gamelist").show();
    $('input[name="gamelist"]:checked').each(function () {
        list += $(this).attr("data-text") + ",";
        
    });
    var lastChar = list.slice(-1);
    if (lastChar == ',') {
        list = list.slice(0, -1);
    }
   
    $('#GameName').val(list);
}


Bindstate = function (countryid) {
   
       
    $.ajax({
        type: 'POST',
        url: '/Game/Bindstate',
        dataType: 'json',
        data: { 'countryid': countryid },
        success: function (getjsonData) {
            // alert(getjsonData.data.length);
            //var response = $.parseJSON(getjsonData.data);
            $("#stateid").empty();
            $.map(getjsonData.data, function (value, key) {
                $("#stateid").append('<option value="' + value.id + '">' + value.name + '</option>');
            });
        },
        error: function (ex) {
            // alert('Failed.' + ex);
            console.log(ex);
        }
    });
    return false;
   
}
    BindCity = function (stateid) {

        $.ajax({
            type: 'POST',
            url: '/Game/BindCity',
            dataType: 'json',
            data: { 'stateid': stateid },
            success: function (getjsonData) {
                //  alert(getjsonData.data.length);
                //var response = $.parseJSON(getjsonData.data);
                $("#cityid").empty();
                $.map(getjsonData.data, function (value, key) {
                    $("#cityid").append('<option value="' + value.id + '">' + value.name + '</option>');
                });
            },
            error: function (ex) {
                // alert('Failed.' + ex);
                console.log(ex);
            }
        });
        return false;
    }
    BindGamelist = function (gametypeid) {
        $.ajax({
            type: 'POST',
            url: '/Game/Bindgamelist',
            dataType: 'json',
            data: { 'gametypeid': gametypeid },
            success: function (getjsonData) {
          
                $("#gametypelist").empty();
                $.map(getjsonData.data, function (value, key) {
                    $("#gametypelist").append("<input type='checkbox' onchange='getGameList()' class='checkvalues' name='gamelist' data-text='" + value.GameName +"' value='" + value.GameName + "'>" + value.GameName + '<br>');
                });
            },
            error: function (ex) {
                // alert('Failed.' + ex);
                console.log(ex);
            }
        });
        return false;
    }
    Loadgrid = function () {
        $.ajax({
            url: '/Game/Displaygrid',
            dataType: "html",
            success: function (data) {
                console.log(data);
                $('#displygrid').html(data);
            }
        });
    }
   