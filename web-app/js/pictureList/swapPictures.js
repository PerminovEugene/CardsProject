/**
 * Created by eugenep on 30.07.14.
 */
src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"

/*$(document).ready(function (){
    document.getElementById('sendButton').onclick = function(){
        //$("#sendButton").click = function(){
        $.ajax({
            type: 'get',
            url: 'cardsList/getNextCards',
            data: 'next',
            //dataType: "json",
            response: "json",
            success: (function(data){
                alert("lol");
            }),
            error: (function(data)
            { alert("error");
            })
        })
    }
})*/

/**
 * take info about picture for cards from server
 */
$(document).ready(function (){
$('#sendButton').click(function(){
    alert("in click function")
    $.ajax({
        url: '../cardsList/getNextCards',
        type: 'get',
        dataType: 'json',
        success: (function(data){
            alert(data);
        }),
        error: (function(data)
        { alert("error cant take pictures");
        })
    })
})
})


// list
$(document).ready(function (){
    /* выбор tembI */
    $('.catalog_cards').click(function(){
        $(".thems_list").slideToggle('fast');
    });
    $('ul.thems_list li').click(function(){
        var tx = $(this).html();
        var tv = $(this).attr('alt');
        $(".cities_list").slideUp('fast');
       // $(".delivery_list span").html(tx);
       // $(".delivery_text").html(tv);
    });
})

