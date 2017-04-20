$(document).ready(function() {
    
    var rating = 0;

    // Color codes the stars based on which star you hover over, undoes the hover over upon mouseout, and records the rating when a star is clicked      
    $('#jQueryData').on({
        mouseover: function() {
            $(this).html('★').css('color', 'red');
        },
        mouseout: function() {
            var numStars = parseInt($(this).parent().parent().next().children('p').html(), 10);
     if (numStars === 0) {
      $(this).parent().children('span').html('☆').css('color', 'white');
            }
      else if (numStars === 1) {
    $(this).parent().children('span').html('☆').css('color', 'white');
     $(this).parent().children('.star1').html('★').css('color', 'red');
     } 
    else if (numStars === 2) {
     $(this).parent().children('span').html('☆').css('color', 'white');
      $(this).parent().children('.star1').html('★').css('color', 'yellow');
     $(this).parent().children('.star2').html('★').css('color', 'yellow');
            }
            else if (numStars === 3) {
         $(this).parent().children('span').html('☆').css('color', 'white');
       $(this).parent().children('.star1').html('★').css('color', 'green');
      $(this).parent().children('.star2').html('★').css('color', 'green');
       $(this).parent().children('.star3').html('★').css('color', 'green');
            } else if (numStars === 4) {
     $(this).parent().children('span').html('☆').css('color', 'white');
       $(this).parent().children('.star1').html('★').css('color', 'blue');
        $(this).parent().children('.star2').html('★').css('color', 'blue');
      $(this).parent().children('.star3').html('★').css('color', 'blue');
      $(this).parent().children('.star4').html('★').css('color', 'blue');
      }
      
      else if (numStars === 5) {
     $(this).parent().children('span').html('☆').css('color', 'white');
       $(this).parent().children('.star1').html('★').css('color', 'orange');
        $(this).parent().children('.star2').html('★').css('color', 'orange');
      $(this).parent().children('.star3').html('★').css('color', 'orange');
      $(this).parent().children('.star4').html('★').css('color', 'orange');
      $(this).parent().children('.star5').html('★').css('color', 'orange');
      }
        },
        click: function() {
    $(this).parent().children('span').html('☆').css('color', 'white');
     $(this).html('★').css('color', 'red');

       clicked = true;
       rating = 1;
     $(this).parent().parent().next().children('p').html(rating);
        }
    }, '.star1');

    $('#jQueryData').on({
        mouseover: function() {
            $(this).html('★').css('color', 'yellow');
            $(this).prev().html('★').css('color', 'yellow');
        },
        mouseout: function() {
            var numStars = parseInt($(this).parent().parent().next().children('p').html(), 10);
            if (numStars === 0) {
                $(this).parent().children('span').html('☆').css('color', 'white');
            } else if (numStars === 1) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'red');
            } else if (numStars === 2) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'yellow');
                $(this).parent().children('.star2').html('★').css('color', 'yellow');
            }
            else if (numStars === 3) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'green');
                $(this).parent().children('.star2').html('★').css('color', 'green');
                $(this).parent().children('.star3').html('★').css('color', 'green');
            } else if (numStars === 4) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'blue');
                $(this).parent().children('.star2').html('★').css('color', 'blue');
                $(this).parent().children('.star3').html('★').css('color', 'blue');
                $(this).parent().children('.star4').html('★').css('color', 'blue');
            }
            else if (numStars === 5) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'orange');
                $(this).parent().children('.star2').html('★').css('color', 'orange');
                $(this).parent().children('.star3').html('★').css('color', 'orange');
                $(this).parent().children('.star4').html('★').css('color', 'orange');
                $(this).parent().children('.star5').html('★').css('color', 'orange');
            }
        },
        click: function() {
            $(this).parent().children('span').html('☆').css('color', 'white');
            $(this).html('★').css('color', 'yellow');
            $(this).prev().html('★').css('color', 'yellow');
            clicked = true;
            rating = 2;
            $(this).parent().parent().next().children('p').html(rating);
        }
    }, '.star2');

    $('#jQueryData').on({
        mouseover: function() {
            $(this).html('★').css('color', 'green');
            $(this).prev().html('★').css('color', 'green');
            $(this).prev().prev().html('★').css('color', 'green');
        },
        mouseout: function() {
            var numStars = parseInt($(this).parent().parent().next().children('p').html(), 10);
            if (numStars === 0) {
                $(this).parent().children('span').html('☆').css('color', 'white');
            } else if (numStars === 1) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'red');
            } else if (numStars === 2) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'yellow');
                $(this).parent().children('.star2').html('★').css('color', 'yellow');
            }
            else if (numStars === 3) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'green');
                $(this).parent().children('.star2').html('★').css('color', 'green');
                $(this).parent().children('.star3').html('★').css('color', 'green');
            } else if (numStars === 4) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'blue');
                $(this).parent().children('.star2').html('★').css('color', 'blue');
                $(this).parent().children('.star3').html('★').css('color', 'blue');
                $(this).parent().children('.star4').html('★').css('color', 'blue');
            }
            else if (numStars === 5) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'orange');
                $(this).parent().children('.star2').html('★').css('color', 'orange');
                $(this).parent().children('.star3').html('★').css('color', 'orange');
                $(this).parent().children('.star4').html('★').css('color', 'orange');
                $(this).parent().children('.star5').html('★').css('color', 'orange');
            }


        },

        click: function() {
            $(this).parent().children('span').html('☆').css('color', 'white');
            $(this).html('★').css('color', 'green');
            $(this).prev().html('★').css('color', 'green');
            $(this).prev().prev().html('★').css('color', 'green');
            clicked = true;
            rating = 3;
            $(this).parent().parent().next().children('p').html(rating);
        }
    }, '.star3');

    $('#jQueryData').on({
        mouseover: function() {
            $(this).html('★').css('color', 'blue');
            $(this).prev().html('★').css('color', 'blue');
            $(this).prev().prev().html('★').css('color', 'blue');
            $(this).prev().prev().prev().html('★').css('color', 'blue');
        },
        mouseout: function() {
            var numStars = parseInt($(this).parent().parent().next().children('p').html(), 10);
            if (numStars === 0) {
                $(this).parent().children('span').html('☆').css('color', 'white');
            } else if (numStars === 1) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'red');
            } else if (numStars === 2) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'yellow');
                $(this).parent().children('.star2').html('★').css('color', 'yellow');
            }
            else if (numStars === 3) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'green');
                $(this).parent().children('.star2').html('★').css('color', 'green');
                $(this).parent().children('.star3').html('★').css('color', 'green');
            } else if (numStars === 4) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'blue');
                $(this).parent().children('.star2').html('★').css('color', 'blue');
                $(this).parent().children('.star3').html('★').css('color', 'blue');
                $(this).parent().children('.star4').html('★').css('color', 'blue');
            }
            else if (numStars === 5) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'orange');
                $(this).parent().children('.star2').html('★').css('color', 'orange');
                $(this).parent().children('.star3').html('★').css('color', 'orange');
                $(this).parent().children('.star4').html('★').css('color', 'orange');
                 $(this).parent().children('.star5').html('★').css('color', 'orange');
            }
        },

        click: function() {
            $(this).html('★').css('color', 'blue');
            $(this).prev().html('★').css('color', 'blue');
            $(this).prev().prev().html('★').css('color', 'blue');
            $(this).prev().prev().prev().html('★').css('color', 'blue');
            clicked = true;
            rating = 4;
            $(this).parent().parent().next().children('p').html(rating);
        }
    }, '.star4');
     $('#jQueryData').on({
        mouseover: function() {
            $(this).html('★').css('color', 'orange');
            $(this).prev().html('★').css('color', 'orange');
            $(this).prev().prev().html('★').css('color', 'orange');
            $(this).prev().prev().prev().html('★').css('color', 'orange');
            $(this).prev().prev().prev().prev().html('★').css('color', 'orange');
        },
        mouseout: function() {
            var numStars = parseInt($(this).parent().parent().next().children('p').html(), 10);
            if (numStars === 0) {
                $(this).parent().children('span').html('☆').css('color', 'white');
            } else if (numStars === 1) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'red');
            } else if (numStars === 2) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'yellow');
                $(this).parent().children('.star2').html('★').css('color', 'yellow');
            }
            else if (numStars === 3) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'green');
                $(this).parent().children('.star2').html('★').css('color', 'green');
                $(this).parent().children('.star3').html('★').css('color', 'green');
            } else if (numStars === 4) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'blue');
                $(this).parent().children('.star2').html('★').css('color', 'blue');
                $(this).parent().children('.star3').html('★').css('color', 'blue');
                $(this).parent().children('.star4').html('★').css('color', 'blue');
            }
            else if (numStars === 5) {
                $(this).parent().children('span').html('☆').css('color', 'white');
                $(this).parent().children('.star1').html('★').css('color', 'orange');
                $(this).parent().children('.star2').html('★').css('color', 'orange');
                $(this).parent().children('.star3').html('★').css('color', 'orange');
                $(this).parent().children('.star4').html('★').css('color', 'orange');
                 $(this).parent().children('.star5').html('★').css('color', 'orange');
            }
        },

        click: function() {
            $(this).html('★').css('color', 'orange');
            $(this).prev().html('★').css('color', 'orange');
            $(this).prev().prev().html('★').css('color', 'orange');
            $(this).prev().prev().prev().html('★').css('color', 'orange');
            clicked = true;
            rating = 5;
            $(this).parent().parent().next().children('p').html(rating);
        }
    }, '.star5');
});
