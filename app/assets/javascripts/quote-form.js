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
  $('.forms-wrapper').css('height', (formHeight + 3));
}

$(document).ready(function(){


  $('.form-1 input[type="radio"] + label').click(function(){
    selectedIndex = $(this).index();
    ContactMethod(selectedIndex);
  });


  starLabel = $('.form-2 input[type="radio"] + label')
  starLabelActive = $('.form-2 input[type="radio"]:checked + label')
  youngerSiblings = starLabelActive.prevAll(starLabel);
  $(youngerSiblings).addClass('star-active');
  function starLabelIn() {
    youngerSiblings = $(this).prevAll(starLabel);
    $(youngerSiblings).addClass('hover')
  };
  function starLabelOut() {
    youngerSiblings = $(this).prevAll(starLabel);
    $(youngerSiblings).removeClass('hover')
  };
  function setHealthText(health) {
    $('.health-title').html(health);
  };
  function colorStars(youngerSiblings) {
    $(starLabel).removeClass('star-active')
    youngerSiblings.each(function (){
      $(this).addClass('star-active');
    });
  };


  $(starLabel).hover( starLabelIn, starLabelOut )

  $(starLabel).click(function(){
    health = $(this).text();
    setHealthText(health);

    youngerSiblings = $(this).prevAll(starLabel);
    colorStars(youngerSiblings);
  });

  function initTabbing() {

    if ($('.form-1').css('margin-top') === '0px' ) {
      $('.form-2 input').each(function (index, value) {
        $(this).attr('tabindex','1')
      });
      $('.form-1 input, .form-1 select, .form-2 select').each(function (index, value) {
        $(this).attr('tabindex','-1')
      });
    } else {
      $('.form-2 input, .form-2 select').each(function (index, value) {
        $(this).attr('tabindex','-1')
      });
      $('.form-1 input, .form-1 select').each(function (index, value) {
        $(this).attr('tabindex','1')
      });
    }
  }

/*
  $('.button-next').click(function(){
    formHeight = $('.form-1').outerHeight();
    formHeightOffset = -(formHeight + 120)
    $('.form-1').css('margin-top', formHeightOffset);
    formHeight = $('.form-2').outerHeight();
    setFormHeight(formHeight);
    //QuoteHeaderText = 'tbd'
    //$('.quote-wrapper h4').html(QuoteHeaderText);
    $('.quote-wrapper h4').hide();
    $('.quote-wrapper > p').fadeIn();
    //initTabbing();
  });

  $('.button-prev').click(function(){
    $('.form-1').css('margin-top', 0);
    formHeight = $('.form-1').outerHeight();
    setFormHeight(formHeight)
    //QuoteHeaderText = 'Start protecting your legacy'
    //$('.quote-wrapper h4').html(QuoteHeaderText);
    $('.quote-wrapper h4').fadeIn();
    $('.quote-wrapper > p').hide();
    //initTabbing();
  });
*/
  $('select').customSelect();// reset select box styles
  //$('.customSelect').attr('tabindex', 1);
  $(".telephone").mask("(999) 999-9999");


});

$(window).load(function(){
  formHeight = $('form').outerHeight();
  setFormHeight(formHeight);
});
