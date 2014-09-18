/**
 * Created by sevenbits on 18.09.14.
 */

$(document).ready(function(){
    var obj = {
        "Request": "login"
    };
    var myJson = JSON.stringify(obj);
    $.ajax({
//        url: '/CardsProject/enterToSite/checkUserStatus',
        url: '/enterToSite/checkUserStatus',
        type: 'post',
        dataType: 'JSON',
        data: obj,
        response: 'JSON',
        success: (function (response) {
            //  alert(response.response);
            if (response.response == 'yes') {
                //user is logined
            }
            else if(response.response == 'not') {
                window.location.replace("..")
            }
            else {
                //logging there
            }
        }),
        error: (function (response) {
            //time to logging
            alert("error");
        })
    })
})