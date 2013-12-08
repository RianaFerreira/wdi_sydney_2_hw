//take object as an argument and take the object keys to work out what to do
// var post = {
//   title: "My first Handlebar template",
//   date: "Today",
//   body: "Lorem ipsum"
// };

var harryPotterPost = {
  title: 'What Really Happened To Dumbledore',
  date: 'Yesterday',
  body: 'You are not going to <b>believe</b> this...'
  // author: {
  //   first_name: 'JK',
  //   last_name: 'Rowling'
  // }
};

$(document).ready(function(){
  var source = $('#post-template').html();
  var postTemplate = Handlebars.compile(source);
  // $('body').append( postTemplate(post) );
  Handlebars.registerHelper('fullname', function (first, last){
    //return 'Mr or Mrs or Miss ' + first + ' ' + last;
    return ['Mr or Mrs or Miss' + first, last].join(' ');
  });

  $.ajax({
    type: 'GET',
    url: 'http://localhost:3001/posts/1.json',
    dataType: 'json'
  }).done(function (data){
    $('body').append( postTemplate(data));
  }).error(function(data){
    console.log("something bad happened", data);
  });

  $('body').append( postTemplate(harryPotterPost) );

});
