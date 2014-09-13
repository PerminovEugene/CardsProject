/**
 * Created by eugenep on 20.08.14.
 */

$(document).ready(function(){
    $('.card-face').hide();
    $('.card-back').hide();
    $('.big-destination-card').show();
    $('.big-back-picture').hide();
    $('.big-picture').hide();
});

$(document).ready(function() {
    $('.js-choose-picture').click(function() {
        $('.big-destination-card').hide();
        $('.big-back-picture').hide();
        $('.big-picture').show();

    })
});

$(document).ready(function() {
    $('.js-choose-back-picture').click(function() {
        $('.big-destination-card').hide();
        $('.big-picture').hide();
        $('.big-back-picture').show();
        $('.file-logo').hide;
//        if (t[0].src.outerHTML[src] == '') {
//            t[0].hide;
//        }

    })
});

$(document).ready(function() {
    $('.js-choose-sender').click(function() {
        $('.big-back-picture').hide();
        $('.big-picture').hide();
        $('.big-destination-card').show();
    })
});