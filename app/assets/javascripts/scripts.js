$(document).ready(function() {
  
	$('.hidden-text').hide();
  
	$('.reveal-story').bind('click', function() {
	  $( $(this).attr('href') ).fadeIn('fast');
	  
	  $(this).addClass('disabled');
	  
	  return false;
	});
  
});