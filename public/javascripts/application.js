var showEms = function(){
  var em_value = $(window).width() / parseInt($('body').css('font-size'));
  $('.screen-width').text(' ' + em_value + 'em');
  return true;
};

// General UX interactions
// need to make better
$(document).ready(function() {
	
	$(".nav_toggle").click(function () {
		$(".toadstool_nav").slideToggle("slow");
	});
	
	$(".click_more_headings").click(function () {
		event.preventDefault();
		$(".read_more_headings").slideToggle("slow");
	});
	
	$(".click_more_typography").click(function () {
		event.preventDefault();
		$(".read_more_typography").slideToggle("slow");
	});
	
	$(".click_more_rhythm").click(function () {
		event.preventDefault();
		$(".read_more_rhythm").slideToggle("slow");
	});
	
	$(".click_more_web_fonts").click(function () {
		event.preventDefault();
		$(".read_more_web_fonts").slideToggle("slow");
	});
	
	showEms();
	
});


// will show em size of window on resize of view
$(window).resize(function() {
	showEms();
});

// forces mobile address bar to scroll up
if (/mobile/i.test(navigator.userAgent) && !window.location.hash) { window.onload = function () {
  window.scrollTo(0, 1);
}; }



