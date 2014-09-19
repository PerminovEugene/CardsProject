/**
 * Created by eugenep on 21.08.14.
 * Отображение красивого инпута для лого на шаге 3
 */
$(document).ready(function() {
    $(".js-hide-file-input").hide();
});

$(document).ready(function() {
    $('#js-logo-presenter').click(function () {
        $('.js-hide-file-input').click();
        })
});
$(document).ready(function() {
    if ($(".js-hide-file-input")[0].value != null) {
        var text_info = $(".js-logo-presenter");
        var text_h3 = text_info[0].getElementsByTagName("h3");
        text_h3[0].innerHTML = "Загрузите логотип";
    }
});
$(document).ready(function() {
    $(".js-hide-file-input").on("change", function () {
        var img = $(".js-image-logo");
        var text_info = $(".js-logo-presenter");
        var text_h3 = text_info[0].getElementsByTagName("h3");
        text_h3[0].innerHTML = "Логотип загружен";
    })
})