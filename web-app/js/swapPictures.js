/**
 * Created by eugenep on 30.07.14.
 */

// Load pictures at start
$(document).ready(function () {
//    getNextPicturesFromServer();
//    loadFirstPicture();
    loadAllPictures();
})

/*
function loadFirstPicture(){
    var items = document.getElementById('list');
    var imgSource = items.children[1].children;
    var imgDest = document.getElementById('picture_preview');
    imgDest["src"] = imgSource[0]["src"];
}*/

$(document).ready(function () {
    $('#get-next-button').click(function () {
        getNextPicturesFromServer();
       // loadFirstPicture();
    })
})

$(document).ready(function () {
    $('#get-previous-button').click(function () {
        getPreviousPicturesFromServer();
//       loadFirstPicture();
    })
})

/**
 * фэйл в том что  пока сохраняем в поле нэйм исходный урл с серва чтобы потом кинуть его обратно при выборе
 */
function getNextPicturesFromServer() {
    var items = document.getElementById('list');
    for (var i = 0; i<items.children.length ; i++){
        $.ajax({
            url: 'picturesList/getNextPictures',
            type: 'get',
            dataType: 'json',
            success: (function (data) {
                i +=1;
                var img = items.children[i-7].children;
                img[0]["src"] = data[0];
                img[0]["name"] = data[0];
                img[0].setAttribute('data-id', data[1]);
            }),
            error: (function (data) {
                i +=1;
                var img = items.children[i-7].children;
                img[0]["background-color"] = "red";
            })
        })
    }
}

var getPreviousPicturesFromServer = function() {
    var items = document.getElementById('list');
    for (var i = 0; i<items.children.length ; i++){
        $.ajax({
            url: 'picturesList/getPreviousPictures',
            type: 'get',
            dataType: 'json',
            success: (function (data) {
                i +=1;
                var img = items.children[i-7].children;
                img[0]["src"] = data;
                img[0]["name"] = data;
            }),
            error: (function (data) {
                i +=1;
                var img = items.children[i-7].children;
                img[0]["background-color"] = "red";
            })
        })
    }
}

var loadAllPictures = function() {
    $.ajax({
        url: 'picturesList/sendListPictures',
        type: 'get',
        dataType: 'json',
        success: (function (data) {
            console.log(data);
            var pictures = $('#list img');
            console.log(pictures.length);
            pictures.each(function(index){
                $(this).attr('src', data.path[index]);
                $(this).attr('data-id', data.id[index]);
            });
        }),
        error: (function () {
            console.log('fail');
        })
    })
}
// отобразить большую картинку
$(document).ready(function () {
    $('.picture').click(function () {
        var img = document.getElementById('picture-preview');
        img["src"] = this.src;
        img["name"] = this.name;
        var data_id = $(this).attr('data-id');
        img.setAttribute('data-id', data_id);
    })
})
// тыкнули батон следующие картинки
$(document).ready(function () {
    $('#next-step-button').click(function ()
    {
        onNextStep();
    })
})
// тыкнули кнопку перйти на следующий шаг
var onNextStep = function(){
    var img = $('#picture-preview');
    var imgDest = img.attr('src');
    var imgId = img.attr('data-id');
    if (imgDest == "")
    //there may be other ulr if anything change
    {
        alert("сначала выберите открытку");
    }
    else{
        var toServer = {path : imgDest, id: imgId};
        $.ajax({
            url: 'picturesList/saveChoicePicture',
            type: 'post',
            dataType: 'text',
            data:toServer,
            response: 'json',
           // response:'json',
            success: (function (response) {
//                alert(response);
                window.location.replace("envelope/index");
            }),
            error: (function (data) {
            //  alert(imgDest["name"]);
            //   alert(response);
               alert('cant send picture now :(');
            })
        })
    }
}
