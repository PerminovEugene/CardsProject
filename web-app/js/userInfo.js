/**
 * Created by sevenbits on 12.08.14.
 */
var loadCards = function() {
    $.ajax({
        url: '../cabinet/sendCards',
        type: 'get',
        dataType: 'json',
        success: (function (data) {
            var component = $('.js-tbody');
            component.find('tr').empty();
            var template = Handlebars.compile($('#table-template').html());
            component.append( template(data) );
        }),
        error: (function () {
            console.log('loading list of cards failed');
        })
    })
};

var loadUserInfo = function() {
    $.ajax({
        url: '../cabinet/sendUserInfo',
        type: 'get',
        dataType: 'json',
        success: (function (data) {
            var form = $('.js-cabinet-form');
            form.find('.js-name').val(data.human.name);
            form.find('.js-post').val(data.human.post);
            form.find('.js-company').val(data.company.name);
            form.find('.js-city').val(data.address.city);
            form.find('.js-street').val(data.address.street);
            form.find('.js-house').val(data.address.house);
            form.find('.js-housing').val(data.address.housing);
            form.find('.js-office').val(data.address.office);
            form.find('.js-postcode').val(data.address.postCode);
//            form.find('.js-file').attr('value', data.company.logo);
            form.find('.js-logo-preview').attr('src','../'+ data.company.logo);

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
    loadUserInfo();
    $('.js-table').addClass('hide');
    $('.js-cabinet-form').removeClass('hide');
    $('.js-user-cards').removeClass('active-tab');
    $(this).addClass('active-tab');
});

$(document).on('click', '.js-user-cards', function(){
    var component = $('.js-tbody');
    component.find('tr').empty();
    loadCards();
    $('.js-cabinet-form').addClass('hide');
    $('.js-table').removeClass('hide');
    $('.js-user-info').removeClass('active-tab');
    $(this).addClass('active-tab');
});