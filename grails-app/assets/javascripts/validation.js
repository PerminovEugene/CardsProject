/**
 * Created by lokk on 07.08.14.
 */
$(document).ready(function() {
    $('.js-error').empty();
    $(document).on('click', '.js-submit', function(){
        var text_fields = $('.js-form input[type=text]');
        var file = $('.js-form input[type=file]');
        var errMessage = '';
        var counter = 0;
        var success = false;
        $('.js-error').empty();
        text_fields.each(function(index) {
            $(this).removeClass('empty-field');
            if ($(this).val() !== ''){
                counter++;
            } else {
                $(this).addClass('empty-field');
                errMessage = 'Вы заполнили не все поля';
            }
        });
        console.log(counter, text_fields.length);
        if (counter == text_fields.length) {
            success = true;
        }
        if (file.val() !== '') {
            success = true;
        } else {
            success = false;
            errMessage = 'Вы не загрузили логотип'
        }

        if (success) {
            $('.js-form').submit();
        } else {
            $('.js-error').text(errMessage);
        }
    });
})