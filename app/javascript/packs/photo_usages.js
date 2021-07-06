// Javascript for photo usages form

$(document).ready(function(){

  $("#wikimedia_permission_yes").change(function(){
    $('#alt_photo').hide('slow');
    $('#photo_usage_photos').val('');
  });

  $("#wikimedia_permission_no").change(function(){
    $('#alt_photo').show('slow');
  });

  $("#photo_usage_form").submit(function(event){
    if($("input[name='photo_usage[wikimedia_permission]']:checked").val() == 'no' &&
       $("#photo_usage_photo").val() == ''
    ){
      $("#own_photo").addClass("field_with_errors");
      $("#own_photo_message").html("<b>must upload photo</b>");
      return false;
    }
  });

  $("#photo_usage_photo").change(function(){
    $("#own_photo").removeClass("field_with_errors");
    $("#own_photo_message").html("");
  });

})
