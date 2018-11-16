# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#We're essentialy finding the pics div and then applying the masonry magic onto it. 

#		$(function(){
#		  $('#masonry-container').masonry({
#		    itemSelector: '.box',
#		    columnWidth: 200,
#		    isAnimated: !Modernizr.csstransitions,
#		    isFitWidth: true
#		  });
#
#		});




$ ->
	$('#pics').imagesLoaded ->
		$('#pics').masonry
			itemSelector: '.box'
			isFitWidth: true