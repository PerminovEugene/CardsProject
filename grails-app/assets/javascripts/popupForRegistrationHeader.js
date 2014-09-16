$(document).ready(function(){
    RegPopUpHide();
})
//Функция отображения PopUp
function RegPopUpShow(){
    $('#reg_popup_block').show();
}
//Функция скрытия PopUp
function RegPopUpHide(){
    $('#reg_popup_block').hide();
}
$(document).ready(function () {
    $('#registration-button_t').click(function () {
        RegPopUpShow();
    })
})

//for hide alert-popup when clicked out of him
$(document).ready(function() {
    $('#reg_popup_block').click(function(){
        RegPopUpHide();
    });
    $('#reg_popup_content').click(function (e) {
        e.stopPropagation();
    })
})
//close popup when use 'x'
$(document).ready(function() {
    $('.reg_exit_sign').click(function() {
        RegPopUpHide();
    })
})
function regErrorMessageMail(message) {
    var userMail = document.getElementsByClassName("reg_mailError");
    userMail[0].textContent = message;
}
// its need epic refactoring, there validation and ajax to server for registration
$(document).ready(function () {
    $('#send_registration_button').click(function () {
        { // its validation part, must be in other function later
            var flag = true;
            var userMail = document.getElementById("reg_mail").value;
            var userMailer = document.getElementById("reg_mailError");
            var userPass = document.getElementById("reg_pass").value;
            var userPasser = document.getElementById("reg_passError");
            var reg = /[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/;
            if (userMail == "") {
                userMailer.textContent = "E-mail должен быть не пустым";
                flag = false;
            } else if (!userMail.match(reg)) {
                userMailer.textContent = "Пожалуйста, введите правильный e-mail";
                flag = false;
            } else {
                userMailer.textContent = "";
                if (userPass == "") {
                    // var userPasser = document.getElementById("reg_passError");
                    userPasser.textContent = "Пароль должен быть не пустым";
                    flag = false;
                } else if (userPass.length < 6) {
                    userPasser.textContent = "Слишком короткий пароль;";
                    flag = false;
                } else if (userPass.length > 25) {
                    userPasser.textContent = "Слишком длинный пароль;";
                    flag = false;
                } else {
                    reg = /^[\.\+\*a-z0-9_-]{6,30}$/i;
                    if (!userPass.match(reg)) {
                        var userPasser = document.getElementById("reg_passError");
                        userPasser.textContent = "Некорректный пароль";
                        flag = false;
                    }
                }
            }
        }
        if (flag == true) {
            userMail = document.getElementById("reg_mail").value;
            userPass = document.getElementById("reg_pass").value;
            var obj = {
                "Request": 'registration',
                "Mail": userMail,
                "Pass": userPass
            };
            var myJson = JSON.stringify(obj);
            $.ajax({
//                url: '../enterToSite/registration',
                url: '../enterToSite/registration',
                type: 'post',
                dataType: 'JSON',
                data: obj,
                response: 'JSON',
                success: (function (response) {
                    if (response.response == "success") {
                        RegPopUpHide();
                        $('#enter-button_t').hide();
                        $('#registration-button_t').hide();
                        $('#exit-button_t').show();
                        $('.js-cabinet-button').removeClass('hidden');
                    }
                    else {
                        var userPasser = document.getElementById("reg_passError");
                        userPasser.textContent = "";
                        regErrorMessageMail("Пользователь с таким емэйлом уже существует")
                    }
                }),
                error: (function (response) {
                    //time to logging
                    alert("error registration");
                })
            })
        }
    })
})


//cheat
$(document).ready(function() {
    $('.js-reg-main-page').click(function() {
        $('#registration-button_t').click();
    })
})