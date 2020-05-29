// Javascript for covid photo form

$(document).ready(function(){
  $("input[name='covid_photo[topic_ids][]']").last().click(function(){
    if(this.checked){
      $("#other-topic_div").show("slow");
    }else{
      $("#other-topic_div").hide("slow");
      $("#other-topic_div input").val('');
    }
  });
})
