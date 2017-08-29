$(document).ready(function(){
  $(".nav-btn").click(function(){
    $(".nav-dropdown").removeClass("hidden")
  });
  $(".close-nav-btn").click(function(){
    $(".nav-dropdown").addClass("hidden")
  });
});
