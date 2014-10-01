/**
 * Created by lokk on 07.08.14.
 */
$(document).ready(function() {
    $('.js-hide-session-info-input').hide();
    if ($('.js-hide-session-info-input')[0].value != "") {
        if ($('.js-hide-session-info-input')[0].value == "[form-1]") {
            $.gritter.add({
                title: 'Спасибо что оставили заявку! Наш менеджер обязательно с вами свяжется.',
                time: 20000
            });
            $('.js-hide-session-info-input')[0].value = "";
        } else if ($('.js-hide-session-info-input')[0].value == "[form-2]") {
            $.gritter.add({
                title: 'Спасибо что подписались на наши новости!',
                time: 20000
            });
            $('.js-hide-session-info-input')[0].value = "";
        }

    };
    $('.js-error').empty();
    $(document).on('click', '.js-submit-send-email', function(){
        reg = /[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/;
        var input = $('.input-bottom-style');
        if (!input[0].value.match(reg)) {
            input[0]["style"].borderColor = 'red';
            $.gritter.add({
                title: 'Введите корректный e-mail.',
                class_name: 'email-validation-class',
                time: 10000
            });
            return false
        } else {
            $('.js-form').submit();
        }
    });
    // валидация формы request
    $(document).on('click', '.js-submit-request-form', function(){
        var radio = $('.js-group-radio-1');
        var success = checkRadioGroup(radio);
        if (success) {
            radio = $('.js-group-radio-2');
            success = checkRadioGroup(radio);
            if (success) {
                radio = $('.js-group-radio-3');
                success = checkRadioGroup(radio);
                if (success) {
                    var input = $('.half-obligatory-field');
                    success = false
                    input.each(function(index) {
                        if (this.value != "")
                        { success = true; }
                    });
                    if (!success) {
                        var input = $('.start-page-input');
                        input[1]["style"].borderColor = 'red';
                        input[1]["style"].borderStyle = 'solid';
                        input[2]["style"].borderColor = 'red';
                        input[2]["style"].borderStyle = 'solid';
                        $.gritter.add({
                            title: 'Значение поля e-mail или телефон не должно быть пустым.',
                            time: 10000
                        });
                    }
                }
                else {
                    $.gritter.add({
                        title: 'Вы не указали желаемый способ рассылки открытки.',
                        time: 10000
                    });
                }
            } else {
                $.gritter.add({
                    title: 'Вы не указали будут ли персональными открытки.',
                    time: 10000
                });
            }
        } else {
            $.gritter.add({
                title: 'Вы не указали что хотели бы разослать.',
                time: 10000
            });
        }
        if (success == true) {
            $('.js-request-form').submit();
        }
    });
    $(document).on('click', '.js-submit', function(){
//        максимальная длина сообщения на открытке
        var _SIZEOFTEXTCARD_ = 650;
//        максимальная длина подписи
        var _SIZEOFSIGNCARD_ = 250;
        var text_fields = $('.js-form input[type=text]');
        var file = $('.js-form input[type=file]');
        var obligatory_fields = $('.obligatory-field');
//        var half_obligatory_fields = $('.half-obligatory-field');
        var postcode_fields = $('.js-postcode-validation');
        var home_fields = $('.js-home-validation');
        var errMessage = '';
        var counter = 0;
        var success = false;
        $('.js-error').empty();


        obligatory_fields.each(function(index) {
            var currentInput = this;
            if (validationOnEmpty(currentInput)) {
                counter++;
            }
        });
//        проверяем валидность индекса (ровно 6 цифр) если не валидно, то счетчик уменьшаем
        postcode_fields.each(function(index) {
          var currentInput = this;
          if (!validationPostCode(currentInput)) {
              counter--;
          }
        });
//        проверяем поле дом, на цифры, если не валидны, то счетчик уменьшаем
        home_fields.each(function(index){
            var currentInput = this;
            if(!validationHomeNumber(currentInput)) {
                counter --;
            }
        });
//        проверяем размер сообщения на открытке на шаге 3
        var textCard = $('.js-text-validation');
        var textCorrect = false;
        textCard.each(function(index) {
            var currentInput = this;
            if (currentInput.value.length < _SIZEOFTEXTCARD_) {
                textCorrect = true;
            }
         });
//        проверяем размер подписи на открытке на шаге 3
        if (textCorrect) {
            var signCard = $('.js-sign-validation');
            signCard.each(function (index) {
                var currentInput = this;
                if (currentInput.value.length >= _SIZEOFSIGNCARD_) {
                    textCorrect = false;
                }
            });
            if (textCorrect == true) {
                success = true;
            }
        }

//        если количество обязательных полей совпало с каунтером то все валидно (для шага 2)
//        если
        console.log(counter, text_fields.length);
        if (counter == obligatory_fields.length || obligatory_fields.length == 0) {
            success = true;
        }

        if (success) {
            $('.js-form').submit();
        } else {
            $('.js-error').text(errMessage);
        }
    });
});
var checkRadioGroup = function(radio) {
    var success = false;
    radio.each(function(index) {
        if (this.checked == true) {
            success = true
        }
    });
    return success;
};
var validationOnEmpty = function(current_input){
    if (current_input.value == "")
    {
        current_input.style.borderColor = "#ed452a";
        //
        if  (current_input.name == "sender_name" || current_input.name == "receiver_name") {
            current_input.placeholder = "Вы забыли указать Ф.И.О.";
        } else if (current_input.name == "sender_company" || current_input.name == "receiver_company") {
            current_input.placeholder = "Вы забыли указать компанию.";
        } else if (current_input.name == "sender_city" || current_input.name == "receiver_city") {
            current_input.placeholder = "Вы забыли указать Город.";
        } else if (current_input.name == "sender_street" || current_input.name == "receiver_street") {
            current_input.placeholder = "Вы забыли указать Улицу";
        } else if (current_input.name == "sender_house" || current_input.name == "receiver_house") {
            current_input.placeholder = "А дом?";
        } else if (current_input.name == "sender_postcode" || current_input.name == "receiver_postcode") {
            current_input.placeholder = "А индекс?";
        }
        return false
    }
    else {
        current_input.style.borderColor = "#b3b3b3";
        return true
    }
}

/*var validationOnMaxSizeBigInput = function(current_input){
    if (current_input.placeholder.length  >= 30)
    {
        current_input.style.borderColor = "#ed452a";
        if  (current_input.name == "sender_name" || current_input.name == "receiver_name") {
            current_input.placeholder = "Ф.И.О. должно быть короче 30 символов";
        } else if (current_input.name == "sender_city" || current_input.name == "receiver_city") {
            current_input.placeholder = "Город должен быть короче 30 символов";
        } else if (current_input.name == "sender_street" || current_input.name == "receiver_street") {
            current_input.placeholder = "Улица должна быть короче 30 символов";
        }
        return false
    }
    else {
        current_input.style.borderColor = "#b3b3b3";
        return true
    }
}*/

var validationPostCode = function(currentInput) {
    reg = /^[0-9]{6}/;
    if (!currentInput.value.match(reg)) {
        currentInput.style.borderColor = "#ed452a";
        return false;
    }
    return true;
};
var validationHomeNumber = function(currentInput) {
    reg = /^[\.\+\*0-9_-]{1,10}$/i;
    if (!currentInput.value.match(reg)) {
        currentInput.style.borderColor = "#ed452a";
        return false;
    }
    return true;
};

