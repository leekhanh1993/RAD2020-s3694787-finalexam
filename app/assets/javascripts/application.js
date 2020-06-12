// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require jquery.easy-autocomplete
//= require_tree .
//= require popper
//= require bootstrap-sprockets

$(document).on('turbolinks:load', function () {
    var options = {
        url: "search.js",
        theme: "bootstrap",
        list: {
            maxNumberOfElements: 5,
            match: {
                enabled: true
            },
            onClickEvent: function () {
                var value = $("#searchform").getSelectedItemData();
                var newConZone = $(`<div>${value}</div>`);

                $('.addconzone').before(newConZone);

                //close search
                $('.searchfield').hide();
                $('.list-city').show();

            }
        }
    };

    $("#searchform").easyAutocomplete(options);

    $('.searchfield').hide();
    if ($('#check24h').is(":checked")) {
        $('.24htype').show();
        $('.12htype').hide();
    } else {
        $('.24htype').hide();
        $('.12htype').show();
    }

    $('#check24h').on('change', function () {
        if ($(this).is(":checked")) {
            $('.24htype').show();
            $('.12htype').hide();
        } else {
            $('.24htype').hide();
            $('.12htype').show();
        }
    });

    $('#btnblack').on('click', function () {
        $('body').css("background-color", "black")
    });

    $('#btngraphite').on('click', function () {
        $('body').css("background-color", "#383428")
    });

    $('#darkslategray').on('click', function () {
        $('body').css("background-color", "#36454f")
    });

    $('.close-search').on('click', function () {
        $('.searchfield').hide();
        $('.list-city').show();
    });

    $('#ensearch').on('click', function () {
        $('.searchfield').show();
        $('.list-city').hide();
    })

});
