// Javascript for photo usages form

$(document).ready(function(){

  $("#wikimedia_permission_yes").change(function(){
    $('#alt_photo').hide('slow');
    $('#photo_usage_photos').val('');
  });

  $("#wikimedia_permission_no").change(function(){
    $('#alt_photo').show('slow');
  });

})
