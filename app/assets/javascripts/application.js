//= require jquery
//= require jquery_ujs
//= require_self
//= require_tree .

// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(window).load(function() {
	$('#slideshow').flexslider({
	controlNav:false,
	directionNav:true
	});
});
function testWidth() {
	if ($(document).width() > 1170) {
		$("body").addClass("wide");
		$("#slideshow").flexslider({
			controlNav:false,
			controlsContainer: ".flexslider-container",
			directionNav:true
		});		
	}
	else {$("body").removeClass("wide");}
}

$(document).ready(function() {
	testWidth();
	$(window).resize(function() {
		testWidth();
	});
});