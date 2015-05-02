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
//= require bootstrap-datepicker
//= require jquery_nested_form
//= require_tree .



$(document).on('page:change', function () {
	$(".questo").hover( function (e) {
	    $(this).addClass('animated tada');
		 }, function(e){
		    $(this).removeClass('animated tada');
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
    
    	 $('.collapse').collapse()
    	 
	});
	
	
	
