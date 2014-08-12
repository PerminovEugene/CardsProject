/**
 * Created by sevenbits on 12.08.14.
 */
var loadCards = function() {
    $.ajax({
        url: 'cabinet/sendCards',
        type: 'get',
        dataType: 'json',
        success: (function (data) {
            console.log(data);
//            var pictures = $('#list img');
//            console.log(pictures.length);
//            pictures.each(function(index){
//                $(this).attr('src', data.path[index]);
//                $(this).attr('data-id', data.id[index]);
//            });
        }),
        error: (function () {
            console.log('loading list of cards failed');
        })
    })
};

var loadUserInfo = function() {
    $.ajax({
        url: 'cabinet/sendUserInfo',
        type: 'get',
        dataType: 'json',
        success: (function (data) {
            console.log(data);
//            var pictures = $('#list img');
//            console.log(pictures.length);
//            pictures.each(function(index){
//                $(this).attr('src', data.path[index]);
//                $(this).attr('data-id', data.id[index]);
//            });
        }),
        error: (function () {
            console.log('loading user info failed ');
        })
    })
};

$(document).ready(function () {
    loadUserInfo();
});

$(document).on('click', '.js-user-info', function(){
    loadUserInfo()
});

$(document).on('click', '.js-user-cards', function(){
    loadCards()
});