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
//= require bootstrap/bootstrap-tooltip
//= require turbolinks
//= require bootstrap
//= require bootstrap-datepicker
//= require_tree .



$(document).on('page:change', function () {
	$(".questo").hover( function (e) {
	    $(this).addClass('animated tada');
		 }, function(e){
		    $(this).removeClass('animated tada');
		 });
});

$(document).on('page:change', function () {
	$(".questo1").hover( function (e) {
	    $(this).addClass('animated bounce');
		 }, function(e){
		    $(this).removeClass('animated bounce');
		 });
});


$(document).on('page:change', function () {
  $('.navbar-toggler').on('click', function(event) {
			event.preventDefault();
			$(this).closest('.navbar-minimal').toggleClass('open');
		})
});

$(document).on('page:change', function () {
	
		$('.datepicker').datepicker({
		
			language: "es",
			
			format: "yyyy/mm/dd",
			clearBtn: true,
			keyboardNavigation: false,
			forceParse: false,
			autoclose: true,
			todayHighlight: true,
			toggleActive: true,
			orientation: "top right"
		
	
			})
	})

	$(document).on('page:change', function () {
    	
    	$('.collapse').on('hidden.bs.collapse', function () {
  				 $('.collapse').collapse('hide')
		})
    	
    	  
    	 
	});
	
	
$('.encima').css("display", "block");



	$(document).on('page:change', function () {
		$(function () {
		  $('[data-toggle="tooltip"]').tooltip()
		})

	});
	
	
	
	
	$(document).ready(function(){ 
	
	  $(window).scroll(function(){
	      if ($(this).scrollTop() > 100) {
	          $('#scrollup').fadeIn();
	      } else {
	          $('#scrollup').fadeOut();
	      }
	 }); 

	  $('#scrollup').click(function(){
		      $("html, body").animate({ scrollTop: 0 }, 400);
		      return false;
		  });
	
	  });

		
		
	
	
		
		