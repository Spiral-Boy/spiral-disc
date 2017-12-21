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
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

$(function () {
    /* append text field */
    $('#append').click(function () {
        $('#append_area').append('<div><input class="form-control input-sm " placeholder="曲番" style="width: 80px; display: inline-block; margin: 5px 0 0 30px;" type="number" name="product[discs_attributes][0][musics_attributes][0][music_number]" id="product_discs_attributes_0_musics_attributes_0_music_number" /><input id="InputText" class="form-control input-sm" placeholder="曲名" style="width: 300px; display: inline-block; margin: 5px 0 0 9px;" type="text" name="product[discs_attributes][0][musics_attributes][0][music_name]" /><input class="form-control input-sm" placeholder="曲名" style="width: 100px; display: inline-block; margin: 5px 5px 0 9px;" type="time" name="product[discs_attributes][0][musics_attributes][0][music_time]" id="product_discs_attributes_0_musics_attributes_0_music_time" /><input style="display: inline-block;" type="button" class="remove" value="削除"></div>'); 
    });
    $('#append-2').click(function () {
        $('#append_area-2').append('<div><input class="form-control input-sm " placeholder="曲番" style="width: 80px; display: inline-block; margin: 5px 0 0 30px;" type="number" name="product[discs_attributes][0][musics_attributes][0][music_number]" id="product_discs_attributes_0_musics_attributes_0_music_number" /><input id="InputText" class="form-control input-sm" placeholder="曲名" style="width: 300px; display: inline-block; margin: 5px 0 0 9px;" type="text" name="product[discs_attributes][0][musics_attributes][0][music_name]" /><input class="form-control input-sm" placeholder="曲名" style="width: 100px; display: inline-block; margin: 5px 5px 0 9px;" type="time" name="product[discs_attributes][0][musics_attributes][0][music_time]" id="product_discs_attributes_0_musics_attributes_0_music_time" /><input style="display: inline-block;" type="button" class="remove" value="削除"></div>'); 
    });
    $('#append-3').click(function () {
        $('#append_area-3').append('<div><input class="form-control input-sm " placeholder="曲番" style="width: 80px; display: inline-block; margin: 5px 0 0 30px;" type="number" name="product[discs_attributes][0][musics_attributes][0][music_number]" id="product_discs_attributes_0_musics_attributes_0_music_number" /><input id="InputText" class="form-control input-sm" placeholder="曲名" style="width: 300px; display: inline-block; margin: 5px 0 0 9px;" type="text" name="product[discs_attributes][0][musics_attributes][0][music_name]" /><input class="form-control input-sm" placeholder="曲名" style="width: 100px; display: inline-block; margin: 5px 5px 0 9px;" type="time" name="product[discs_attributes][0][musics_attributes][0][music_time]" id="product_discs_attributes_0_musics_attributes_0_music_time" /><input style="display: inline-block;" type="button" class="remove" value="削除"></div>'); 
    });
    $('#append-4').click(function () {
        $('#append_area-4').append('<div><input class="form-control input-sm " placeholder="曲番" style="width: 80px; display: inline-block; margin: 5px 0 0 30px;" type="number" name="product[discs_attributes][0][musics_attributes][0][music_number]" id="product_discs_attributes_0_musics_attributes_0_music_number" /><input id="InputText" class="form-control input-sm" placeholder="曲名" style="width: 300px; display: inline-block; margin: 5px 0 0 9px;" type="text" name="product[discs_attributes][0][musics_attributes][0][music_name]" /><input class="form-control input-sm" placeholder="曲名" style="width: 100px; display: inline-block; margin: 5px 5px 0 9px;" type="time" name="product[discs_attributes][0][musics_attributes][0][music_time]" id="product_discs_attributes_0_musics_attributes_0_music_time" /><input style="display: inline-block;" type="button" class="remove" value="削除"></div>'); 
    });
    /* remove text field */
    $(document).on('click','.remove',function () {
        $(this).parent().remove();
    });
});


