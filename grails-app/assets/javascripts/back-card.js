/**
 * Created by eugenep on 21.08.14.
 */
$(document).ready(function() {
    $(".js-hide-file-input").hide();
})

$(document).ready(function() {
    $('#js-logo-presenter').click(function () {
        $('.js-hide-file-input').click();
        })
})
$(document).ready(function() {
    if ($(".js-hide-file-input")[0].value != null) {
        var text_info = $(".js-logo-presenter");
        var text_h3 = text_info[0].getElementsByTagName("h3");
        text_h3[0].innerHTML = "Логотип загружен";
    }
})
$(document).ready(function() {
    $(".js-hide-file-input").on("change", function () {
        var img = $(".js-image-logo");
//        $(".js-image-logo").img[0].src = "sdas";
       // var input = document.getElementsByClassName("inputFile");
//        var fReader = new FileReader();
//        fReader.readAsDataURL(this.files[0]);
//        var p = img[0].src = this.value;
//        p = this.value;
//        fReader.onload =  function(event) {
//            img.src = event.target.result;//??????
//        }
        var text_info = $(".js-logo-presenter");
        var text_h3 = text_info[0].getElementsByTagName("h3");
        text_h3[0].innerHTML = "Логотип загружен";
    })
})