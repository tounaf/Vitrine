$(document).ready(function () {

    var carousel = $('#carousel');
    console.log(carousel);
    
    var img = $('#carousel img');
    var indexElement = img.length - 1 ;
    var i = 0;
    console.log(img.length);
    
    var current = img.eq(i);
    img.css('display','none');
    current.css('display','block');
    carousel.after('<div class="controls"><button type="button" class="next">next</button><button type="button" class="prev">prevous</button></div>')
    $('.next').click(function () {
          console.log(current);
         i++;
         if (i <= indexElement) {
            img.css('display','none');
            current = img.eq(i);
            current.css('display','block');
        
         } else {
           i = indexElement ;
         }
         
    })
    $('.prev').click(function () {
         i--;
         if (i >= 0) {
            img.css('display','none');
            current = img.eq(i);
            current.css('display','block');
        
         } else {
           i = 0 ;
         }
         
    })
      var array  = ["a","b","c","d"]
      var index = 0
     function test() {
         setTimeout(function(){
            if ( index < array.length) {
              
              const element = array[index];
              $('.prev').append('<span>' + element+' </span>');
            }
            index++;
            if (index == array.length){
              index = 0;
            }
            test();
         }, 100) 
    }
    // $('.click').click(function () {
      // return test();
    // });
    function slideImg(){
      setTimeout(() => {
        if (i < indexElement) {
          i++;
        } else {
          i = 0
        }
         img.css('display','none');
            current = img.eq(i);
            current.css('display','block');
        slideImg();
      }, 1000);
    }
    // slideImg();

});