// Javascript for covid photo form

$(document).ready(function(){
  var covid_other = $("input[name='covid_photo[topic_ids][]']").last()

  if(covid_other.checked){
    $("#other-topic_div").show();
  }

  covid_other.click(function(){
    if(this.checked){
      $("#other-topic_div").show("slow");
    }else{
      $("#other-topic_div").hide("slow");
      $("#other-topic_div input").val('');
    }
  });
})
