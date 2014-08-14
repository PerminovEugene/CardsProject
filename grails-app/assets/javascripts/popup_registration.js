/**
 * Created by eugenep on 05.08.14.
 */

//Скрыть PopUp при загрузке страницы
$(document).ready(function(){
    PopUpHide();
    alertPopUpHide();
    //checkUser();
    })
//Функция отображения PopUp
function PopUpShow(){
    $('#popup_block').show();
}
//Функция скрытия PopUp
function PopUpHide(){
    $('#popup_block').hide();
}

//Функция отображения alertPopUp
function alertPopUpShow(){
    $('#popup_block_alert').show();
}

//Функция скрытия alertPopUp
function alertPopUpHide(){
    $('#popup_block_alert').hide();
}
// show popup when use button
$(document).ready(function () {
    $('#registration_button').click(function () {
        var obj = {
            "Request": "login"
        };
        var myJson = JSON.stringify(obj);
        $.ajax({
            url: '../preview/registration',
            type: 'post',
            dataType: 'JSON',
            data: obj,
            response: 'JSON',
            success: (function (response) {
                if (response.response == "true")
                {
                    window.location.replace('../sendStep/saveInDb');
                }
                else {
                    PopUpShow();
                }
            }),
            error: (function (response) {
                //time to logging
                alert("error checkuser");
            })
        })
    })
})
//for hide popup when clicked out of him
$(document).ready(function() {
    $('#popup_block').click(function() {
        alertPopUpShow()
    });
    $('#popup_content').click(function (e) {
        e.stopPropagation();
    })
})
//for hide alert-popup when clicked out of him
$(document).ready(function() {
    $('#popup_block_alert').click(function(){
        alertPopUpHide();
        PopUpHide();
    });
    $('#popup_content_alert').click(function (e) {
        e.stopPropagation();
    })
})
//close popup when use 'x'
$(document).ready(function() {
    $('.exit_sign').click(function() {
        alertPopUpShow();
    })
})

$(document).ready(function () {
    $('#want_send_button').click(function () {
        alertPopUpHide();
    })
})
$(document).ready(function () {
    $('#didnt_want_send_button').click(function () {
        alertPopUpHide();
        PopUpHide();
    })
})

//send on server input info (mail and pass)
function sendRegistrationInfo() {
    var userMail = document.getElementById("mail").value;
    var userPass = document.getElementById("pass").value;
    var obj = {
        "Request": 'registration',
        "Mail": userMail,
        "Pass": userPass
    };
    var myJson = JSON.stringify(obj);
    $.ajax({
        url: '../preview/registration',
        type: 'post',
        dataType: 'JSON',
        data: obj,
        response: 'JSON',
        success: (function (response) {
            alert(response.response)
            window.location.replace('../sendStep/saveInDb');
        }),
        error: (function (response) {
            //time to logging
            alert("error");
        })
    })
}

function validationEmail() {
    var userMail = document.getElementById("mail").value;
    //var userMail = $('.js-mail-input').value;
    if (userMail == "")
    {
        errorMessageMail("E-mail должен быть не пустым");
        return false;
    }
    reg = /[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/;
    if (!userMail.match(reg)) {
        errorMessageMail("Пожалуйста, введите правильный e-mail");
        return false
    }
    return true;
}

function validationPassword() {
    var userPass = document.getElementById("pass").value;
   // var userPass = document.getElementById("pass").value;
    if (userPass == "")
    {
        errorMessagePass("Пароль должен быть не пустым");
        return false;
    }
    if (userPass.length < 6)
    {
        errorMessagePass("Слишком короткий пароль");
        return false;
    }
    if (userPass.length > 25)
    {
        errorMessagePass("Слишком длинный пароль");
        return false;
    }
    reg =  /^[\.\+\*a-z0-9_-]{6,30}$/i;
    if (!userPass.match(reg)) {
        errorMessagePass("Некорректный пароль");
        return false;
    }
    return true;
}

//for info about validation error
function errorMessageMail(message) {
    var userMail = document.getElementsByClassName("mailError");
   // var userMail = $('.js-mail-error').value;
    userMail[0].textContent = message;
}
function errorMessagePass(message) {
    var userMail = document.getElementsByClassName("passError");
    userMail[0].textContent = message;
}


//change some styles in popup at error in validation email
function popupOnErrorEmail() {
    var userMail = document.getElementById("mail");
    userMail["style"].borderColor = '#ed452a';
}
function popupOnErrorPassword() {
    var userMail = document.getElementById("pass");
    userMail["style"].borderColor = '#ed452a';
}
function popupOnError() {
    var userMail = document.getElementById("send_reg_button");
    userMail["style"].backgroundColor = '#ffa112';
}
function popupOnValidEmail() {
    var userMail = document.getElementById("mail");
    userMail["style"].borderColor = '#e0e0e0';
    var userMailEr = document.getElementsByClassName("mailError");
    userMailEr[0].textContent = '';
}
function popupOnValidPassword() {
    var userPass = document.getElementById("pass");
    userPass["style"].borderColor = '#e0e0e0';
    var userPassEr = document.getElementsByClassName("mailError");
    userPassEr[0].textContent = '';
}

//use registration
$(document).ready(function () {
    $('#send_reg_button').click(function () {
        // alert("тут нада проверять валидность данных и отправлять на серв")
        if (!validationEmail()) {
            popupOnErrorEmail();
            popupOnError();

        }
        else{
            if (!validationPassword()) {
                popupOnValidEmail();
                popupOnErrorPassword();
                popupOnError();
            }
            else {
                popupOnValidPassword();
                sendRegistrationInfo();
                PopUpHide();
            }
        }
    })
})
