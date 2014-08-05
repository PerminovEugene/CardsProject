/**
 * Created by eugenep on 05.08.14.
 */

src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"

$(document).ready(function(){
    //Скрыть PopUp при загрузке страницы
    PopUpHide();
});
//Функция отображения PopUp
function PopUpShow(){
    $('#popup_block').show();
}
//Функция скрытия PopUp
function PopUpHide(){
    $('#popup_block').hide();
}

$(document).ready(function () {
    $('#registration_button').click(function () {
        PopUpShow();
        t = true;
    })
})

$(document).ready(function () {
    $('#send_reg_button').click(function () {
        alert("тут нада проверять валидность данных и отправлять на серв")
        PopUpHide();
    })
})

//for hide popup when clicked out of him
$(document).ready(function() {
    $('#popup_block').click(PopUpHide);
    $('#popup_content').click(function (e) {
        e.stopPropagation();
    })
})