/**
 * Created by eugenep on 12.08.14.
 */

/**
 * скрыть попап при загрузке страницы и сделать запрос на сервер о состояни юзера (авторизирован или нет)
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
        url: '/CardsProject/enterToSite/checkUserStatus',
        type: 'post',
        dataType: 'JSON',
        data: obj,
        response: 'JSON',
        success: (function (response) {
            //  alert(response.response);
            if (response.response == 'yes') {
                $('#exit-button_t').show();
                $('#registration-button_t').hide();
            }
            else if(response.response == 'not') {
                $('#enter-button_t').show();
                $('#registration-button_t').show()
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

//Функция отображения PopUp
function PopUpShow_t(){
    $('#popup_block_t').show();
}
//Функция скрытия PopUp
function PopUpHide_t(){
    $('#popup_block_t').hide();
}

// show popup when use button
$(document).ready(function () {
    $('#enter-button_t').click(function () {
       PopUpShow_t();
    })
})

$(document).ready(function () {
    $('#exit-button_t').click(function () {
       sendExit_t()
    })
})
//for hide popup when clicked out of him
$(document).ready(function() {
    $('#popup_block_t').click(PopUpHide_t);
    $('#popup_content_t').click(function (e) {
        e.stopPropagation();
    })
})
//close popup when use 'x'
$(document).ready(function() {
    $('.exit_sign_t').click(PopUpHide_t);
})

//for info about validation error
function errorMessageMail_t(message) {
    var userMail = document.getElementById("mailError_t");
    userMail.textContent = message;
}
function errorMessagePass_t(message) {
    var userMail = document.getElementById("passError_t");
    userMail.textContent = message;
}

function validationEmail_t() {
    var userMail = document.getElementById("mail_t").value;
    if (userMail == "") {
        errorMessageMail_t("E-mail должен быть не пустым");
        return false;
    }
    reg = /[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/;
    if (!userMail.match(reg)) {
        errorMessageMail_t("Пожалуйста, введите правильный e-mail");
        return false
    }
    return true;
}

function validationPassword_t() {
    var userPass = document.getElementById("pass_t").value;
    if (userPass == "")
    {
        errorMessagePass_t("Пароль должен быть не пустым");
        return false;
    }
    if (userPass.length < 6)
    {
        errorMessagePass_t("Слишком короткий пароль");
        return false;
    }
    if (userPass.length > 25)
    {
        errorMessagePass_t("Слишком длинный пароль");
        return false;
    }
    reg =  /^[\.\+\*a-z0-9_-]{6,30}$/i;
    if (!userPass.match(reg)) {
        errorMessagePass_t("Некорректный пароль");
        return false;
    }
    return true;
}

function sendEnterInfo_t() {
    var userMail = document.getElementById("mail_t").value;
    var userPass = document.getElementById("pass_t").value;
    var obj = {
        "Mail": userMail,
        "Pass": userPass
    };
    var myJson = JSON.stringify(obj);
    $.ajax({
        url: '/CardsProject/enterToSite/enter',
        type: 'post',
        dataType: 'JSON',
        data: obj,
        response: 'JSON',
        success: (function (response) {
          //  alert(response.response);
            if (response.response == 'success')
            {
                $('#enter-button_t').hide();
                $('#registration-button_t').hide();
                $('#exit-button_t').show();

                PopUpHide_t();
            }
            else {
                var enterCode = document.getElementById("enter-error_t");
                enterCode.textContent = "Некорректный пароль или email.";
            }
        }),
        error: (function (response) {
            //time to logging
            alert("error1");
        })
    })
}

function sendExit_t() {
    var obj = {
        "request": "exit"
    };
    var myJson = JSON.stringify(obj);
    $.ajax({
        url: '/CardsProject/enterToSite/exit',
        type: 'post',
        dataType: 'JSON',
        data: obj,
        response: 'JSON',
        success: (function (response) {
                $('#exit-button_t').hide();
                $('#registration-button_t').show();
                $('#enter-button_t').show();
        }),
        error: (function (response) {
            //time to logging
            alert("error2");
        })
    })
}
$(document).ready(function () {
    $('#login-button_t').click(function () {
        //alert("тут нада проверять валидность данных и отправлять на серв")
        if (validationEmail_t() && validationPassword_t()){
           sendEnterInfo_t()
        }
        else{
            alert("error4")
        }
    })
})


