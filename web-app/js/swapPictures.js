/**
 * Created by eugenep on 30.07.14.
 */
src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"

/**
 * take info about picture for pictures from server
 */



// Load pictures at start
$(document).ready(function () {
    getNextPicturesFromServer();
    //loadFirstPicture();
})/*
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
       // loadFirstPicture();
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
function getPreviousPicturesFromServer() {
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
// отобразить большую картинку
$(document).ready(function () {
    $('.picture').click(function () {
        var img = document.getElementById('picture-preview');
        img["src"] = this.src;
        img["name"] = this.name;
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
function onNextStep() {
    var imgDest = $('#picture-preview').attr('src');
    if (imgDest == "")
    //there may be other ulr if anything change
    {
        alert("сначала выберите открытку");
    }
    else{
        var toServer = {path : imgDest};
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
