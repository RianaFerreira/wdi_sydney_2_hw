$(document).ready(function () {
  $('#add_color').click(add_color);
  $('#clear').click(clear_colors);
  $('#monster').on('click', monsterfy);

  $('#colors').on('click', '.box', select_color);
  $('#canvas').on('mouseover', '.pixel', paint);

  create_pixels(1000);
});

var add_color = function () {
  var color = $('#color').val();

  var $box = $('<div>').addClass('box');
  $box.css({
    backgroundColor: color
  });
  $('#colors').prepend($box);

  $('#color').focus().val('#ffffff');
};

var select_color = function () {
  var $box = $(this);
  var color = $box.css('background-color');
  $('#selected').css('background-color', color);
}

var clear_colors = function () {
  $('#colors').empty();
  $('#selected').css({'background-color': '#ffffff',
                      'background-image': 'none'});
}

var paint = function (event) {
  var color = $('#selected').css('background-color');
  $(this).css('background-color', color);
}

var create_pixels = function (n) {
  _(n).times(function () {
    var $pixel = $('<div>').addClass('pixel');
    $pixel.appendTo('#canvas');
  });
}

var monsterfy = function () {

      $('.pixel').css({'border-radius':'50%',
                  'background-image': 'url(http://cllctr.com/image/1f3fac2dbab63e158feb090e3d158a49)',
                  'background-size': 'cover'});

}
