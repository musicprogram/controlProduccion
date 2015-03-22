// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .




$(document).ready(function () {
	
	$(function () {
		/* START OF DEMO JS - NOT NEEDED */
		if (window.location == window.parent.location) {
			$('#fullscreen').html('<span class="glyphicon glyphicon-resize-small"></span>');
			$('#fullscreen').attr('href', 'http://bootsnipp.com/mouse0270/snippets/PbDb5');
			$('#fullscreen').attr('title', 'Back To Bootsnipp');
		}    
		$('#fullscreen').on('click', function(event) {
			event.preventDefault();
			window.parent.location =  $('#fullscreen').attr('href');
		});
		$('#fullscreen').tooltip();
		/* END DEMO OF JS */
		
		$('.navbar-toggler').on('click', function(event) {
			event.preventDefault();
			$(this).closest('.navbar-minimal').toggleClass('open');
		})
	});

});