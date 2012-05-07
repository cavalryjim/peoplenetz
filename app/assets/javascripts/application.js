// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require jquery.nivo.slider.pack							
//= require_tree .

$(function() {
  $(".sub_topics a").live("click", function() {
    //$.getScript(this.href);
	header = this.text;
    $.ajax({
		url: this.href,
		context: document.body,
		dataType: "html",					
		success: function(data){
			$('#topic_content').html(data);
			$('#topic_content_title').text(header);
		}
	});
    return false;
  });
}); 