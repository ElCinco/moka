function ContactMethod(selectedIndex) {
  if (selectedIndex <= 1) {
    $('.contact-type').addClass('hidden');
    $('input.email').removeClass('hidden')
  } else {
    $('.contact-type').addClass('hidden');
    $('input.telephone').removeClass('hidden')
  }
}
function setFormHeight(formHeight) {
  $('.quote-wrapper form').css('height', (formHeight + 3));
}

$(document).ready(function(){


  $('.quick-form input[type="radio"] + label').click(function(){
    selectedIndex = $(this).index()
    ContactMethod(selectedIndex)
  });


  $('.detailed-form input[type="radio"] + label').click(function(){
    health = $(this).text();
    $('.health-title').html(health)
  });

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
    //QuoteHeaderText = 'tbd'
    //$('.quote-wrapper h4').html(QuoteHeaderText);
    $('.quote-wrapper h4').hide();
    $('.quote-wrapper > p').fadeIn();
    //initTabbing();
  });

  $('.button-prev').click(function(){
    $('.quick-form').css('margin-top', 0);
    formHeight = $('.quick-form').outerHeight();
    setFormHeight(formHeight)
    //QuoteHeaderText = 'Start protecting your legacy'
    //$('.quote-wrapper h4').html(QuoteHeaderText);
    $('.quote-wrapper h4').fadeIn();
    $('.quote-wrapper > p').hide();
    //initTabbing();
  });

  $('select').customSelect();// reset select box styles
  //$('.customSelect').attr('tabindex', 1);
  $(".telephone").mask("(999) 999-9999");


});

$(window).load(function(){
  formHeight = $('.quick-form').outerHeight();
  setFormHeight(formHeight);
});
