/**
 * Created by lokk on 07.08.14.
 */
$(document).ready(function() {
    $('.js-error').empty();
    $(document).on('click', '.js-submit', function(){
        var text_fields = $('.js-form input[type=text]');
        var file = $('.js-form input[type=file]');
        var obligatory_fields = $('.obligatory-field');
        var errMessage = '';
        var counter = 0;
        var success = false;
        $('.js-error').empty();

        /*порядок проверки именно такой из-за шагов создания открытки.
        Если на одной форме окажутся и текстовые поля и поле загрузки файла -
        результат валидации последнего учитываться не будет*/

//        if ((file.val() !== '') & (file.val() !== undefined) ) {
//            success = true;
//        } else {
//            success = false;
//            errMessage = 'Вы не загрузили логотип';
//        }

        /*text_fields.each(function(index) {
            $(this).removeClass('empty-field');
            if (($(this).val() !== '') && ($(this instanceOf obligatory-field))) {
                counter++;
            } else {
                $(this).addClass('empty-field');
                errMessage = 'Вы заполнили не все поля';
            }
        });
        */
        obligatory_fields.each(function(index) {
            var currentInput = this;
            if (validationOnEmpty(currentInput)) {
                //if (currentInput instanceof $('.wide-input')) {
//                    if (validationOnMaxSizeBigInput())
//                if (currentInput.name == "sender_postcode" || currentInput.name == "receiver_postcode") {
//                    а сюда запилить регулярное выраджение для индекса
//                }
//                else
                    counter++;
                }
//                else if (currentInput instanceof small-input) {
//                    counter++;
//                }
        })
        console.log(counter, text_fields.length);
        if ((counter == obligatory_fields.length) || (obligatory_fields.length == 0)) {
            success = true;
        }

        if (success) {
            $('.js-form').submit();
        } else {
            $('.js-error').text(errMessage);
        }
    });
})

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
