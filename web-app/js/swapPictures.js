/**
 * Created by eugenep on 30.07.14.
 */

// Load pictures at start
$(document).ready(function () {
    loadAllPictures();
});

var loadAllPictures = function() {
    $.ajax({
        url: 'sendListPictures',
        type: 'GET',
        dataType: 'json',
        success: (function (data) {
            console.log(data);
            var pictures = $('#list img');
            console.log(pictures.length);
            pictures.each(function(index){
                $(this).attr('src', '../'+data.path[index]);
                $(this).attr('data-id', data.id[index]);
            });
            var img = document.getElementById('picture-preview');
            img["src"] = pictures[0].src;
            var data_id = $(pictures[0]).attr('data-id');
            $('.hidden-path').val(pictures[0].src);
            $('.hidden-id').val(data_id);
        }),
        error: (function () {
            console.log('fail');
        })
    })
};
// отобразить большую картинку
$(document).ready(function () {
    $('.picture').click(function () {
        var img = document.getElementById('picture-preview');
        img["src"] = this.src;
        var data_id = $(this).attr('data-id');
        $('.hidden-path').val(this.src);
        $('.hidden-id').val(data_id);
    })
});
