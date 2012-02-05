// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {
  	$(':checkbox').iphoneStyle({
	  checkedLabel: 'YES',
	  uncheckedLabel: 'NO'
	});
	
	$(".tabs a:first").tab('show')
});

detect_input: function (elmt) {
     if ($(elmt).value !== '') {
         $(elmt).up('.input_wrapper').addClassName('filled');
         $(elmt).up('form').removeClassName('all_empty')
     } else {
         $(elmt).up('.input_wrapper').removeClassName('filled')
     }
 }

