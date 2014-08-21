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
    $(".js-hide-file-input").on("change", function () {
        var img = $(".js-image-logo");
//        $(".js-image-logo").img[0].src = "sdas";
       // var input = document.getElementsByClassName("inputFile");
        var fReader = new FileReader();
        fReader.readAsDataURL(this.files[0]);
//        var p = img[0].src = this.value;
//        p = this.value;
        fReader.onload =  function(event) {
            img.src = event.target.result;//??????
        }
    })
})