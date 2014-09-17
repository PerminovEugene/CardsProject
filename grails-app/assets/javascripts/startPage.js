/**
 * Created by sevenbits on 17.09.14.
 */

$(document).ready(function(){
    PopUpHide_t();
    $('#enter-button_t').hide();
    $('#exit-button_t').hide();
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
                $('.js-reg-main-page').hide();
            }
            else if(response.response == 'not') {
                $('.js-reg-main-page').show();
            }
            else {
                //logging there
            }
        }),
        error: (function (response) {
            //time to logging
            alert("error");
            return false;
        })
    })
})