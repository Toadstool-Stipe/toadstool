// General UX interactions
// This is not very DRY, need to refactor when I know what I am doing here
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
	
	
	// will show em size of window on load of view
	// I suck at javascript, need to get DRY
	var windowWidth = $(window).width();
	var bodyFontSize = $('body').css('font-size');
	var bodyFontSizeWithoutPx = parseInt(bodyFontSize);
	var emValue = windowWidth/bodyFontSizeWithoutPx;
	$('.screen-width').text(' ' + emValue + 'em');
});


// will show em size of window on resize of view
// I suck at javascript, need to get DRY
$(window).resize(function() {
	var windowWidth = $(window).width();
	var bodyFontSize = $('body').css('font-size');
	var bodyFontSizeWithoutPx = parseInt(bodyFontSize);
	var emValue = windowWidth/bodyFontSizeWithoutPx;
	$('.screen-width').text(' ' + emValue + 'em');
});

// forces mobile address bar to scroll up
if (/mobile/i.test(navigator.userAgent) && !window.location.hash) { window.onload = function () {
  window.scrollTo(0, 1);
}; }



