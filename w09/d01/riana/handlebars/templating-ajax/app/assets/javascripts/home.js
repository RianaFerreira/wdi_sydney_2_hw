var pointer = 0;

function populateCountries() {
    var step = parseInt($('#step-input').val());
    var $content = $('#content');
    var offset = pointer * step;

    var template = Handlebars.compile($('#all-template').html());

    $.ajax({
      type: 'GET',
      url: '/countries/'+step+'/'+offset+'.json',
      dataType: 'json',
      success: function(data){
        var html = template({
          countries:data
        });
        $content.append(html);
      }
    });

    pointer +=1;

}

function populateAll() {
  //when the populate button is clicked display all countries
  // link a view to this js function to listen for the event
  // convert the template data in js
  var template = Handlebars.compile($('#all-template').html());

  $.ajax({
    type: 'GET',
    url:'/countries/all.json',
    dataType:'json',
    success:function(data){

      var html = template({
        countries:data
      });
      $('#content').html(html);

    }
  });
}

// Create the event bindings
$(document).ready(function() {
  // Demonstrates using a function name as the event handler instead of including the function inside (like we're used to seeing)
  // This is useful when re-binding events (certain events are unbound when clicking on the various buttons)
  $('#populate-button').click(populateCountries);
  $('#all-button').click(allButtonClick);
  $('#reset-button').click(function() {
    // this function resets the button and scroll bindings, and sets pointer to 0
    pointer = 0;
    $('#content').html('');
    $(window).unbind('scroll').scroll(scrollFunction);
    $('#populate-button').unbind('click').click(populateCountries);
    $('#all-button').unbind('click').click(allButtonClick);
  });

  $(window).scroll(scrollFunction);

  function scrollFunction() {
    var win = $(window);
    // Infinite scroll math!
    if(win.height() + win.scrollTop() >= $(document).height()) {
      populateCountries();
    }
  }

  // Disables other buttons and scroll event so we don't get duplicate data
  // This serves as a demonstration; we could also just set pointer = false
  function allButtonClick() {
    $(window).unbind('scroll');
    $('#populate-button').unbind('click');
    $('#all-button').unbind('click');
    populateAll();
  }

});
