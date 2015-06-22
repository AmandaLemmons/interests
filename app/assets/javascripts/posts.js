$(window).ready(function(){

  $("#new-task-button").on("click", function(event){
  event.preventDefault();
  $("#super-wicked-modal").modal("show");
});

  // $("#photo-modal/:id").on("click", function(event){
  //   event.preventDefault();
  //   $("#photo-modal").modal("show");
  // });

  // $(".login_btn").on("click", function(event){
  //   console.log("clicked");
  //   event.stopPropagation();
  //   event.preventDefault();
  // });



});
