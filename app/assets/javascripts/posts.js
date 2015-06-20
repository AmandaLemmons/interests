$(window).ready(function(){
  $("#new-task-button").on("click", function(event){
  event.preventDefault();
  $("#super-wicked-modal").modal("show");
});


});
