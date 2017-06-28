function ContactMethod(selectedIndex) {
  if (selectedIndex === 0) {
    $('.contact-type').addClass('hidden');
    $('input.email').removeClass('hidden')
  } else {
    $('.contact-type').addClass('hidden');
    $('input.telephone').removeClass('hidden')
  }
}
function setFormHeight() {
  formHeight = $('.quick-form').outerHeight();
  $('.quote-wrapper form').css('height', formHeight);
}

$(document).ready(function(){


  // set header
  QuoteHeaderText = ''




  function initTabbing() {
    if ($('.quick-form').css('margin-top') === '0px' ) {
      $('.detailed-form input').each(function (index, value) {
        $(this).attr('tabindex','1')
      });
      $('.quick-form input, .quick-form select, .detailed-form select').each(function (index, value) {
        $(this).attr('tabindex','-1')
      });
    } else {
      $('.detailed-form input, .detailed-form select').each(function (index, value) {
        $(this).attr('tabindex','-1')
      });
      $('.quick-form input, .quick-form select').each(function (index, value) {
        $(this).attr('tabindex','1')
      });
    }
  }

  $('.button-next').click(function(){
    formHeight = $('.quick-form').outerHeight();
    formHeightOffset = -(formHeight + 120)
    $('.quick-form').css('margin-top', formHeightOffset);
    formHeight = $('.detailed-form').outerHeight();
    setFormHeight(formHeight);
    QuoteHeaderText = 'Tell us more for a detailed quote'
    $('.quote-wrapper h4').html(QuoteHeaderText);
    initTabbing();
  });

  $('.button-prev').click(function(){
    $('.quick-form').css('margin-top', 0);
    formHeight = $('.quick-form').outerHeight();
    setFormHeight(formHeight)
    QuoteHeaderText = 'Get a quick quote'
    $('.quote-wrapper h4').html(QuoteHeaderText);
    initTabbing();
  });

  $('select').customSelect();// reset select box styles
  $(".telephone").mask("(999) 999-9999");


});

$(window).load(function(){
  setFormHeight();
});
