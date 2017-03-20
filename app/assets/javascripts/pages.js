$(document).ready(function(){
  var mouseX, mouseY;
  var ww = $( window ).width();
  var wh = $( window ).height();
  var traX, traY;
  $(document).mousemove(function(e){
    mouseX = e.pageX;
    mouseY = e.pageY;
    traX = ((mouseX) / 50) ;
    traY = ((mouseY) / 10);
    $(".title").css({"background-position": traX + "%" + traY + "%"});
  });
});
