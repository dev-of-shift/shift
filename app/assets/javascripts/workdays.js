$(document).on('turbolinks:load',function(){

  console.log("hoge");

  $("#worker_list_num").change(function(){
    $("#select_form").submit();
  })
});
