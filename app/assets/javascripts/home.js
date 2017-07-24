$(document).ready(function(){
  $(function() {
      $('.contact-check').click(function() {
        $(this).parent('form').submit();
      });
  });
});

$(window).load(function(){
  $('.img-bg').addClass('opaque')
});
