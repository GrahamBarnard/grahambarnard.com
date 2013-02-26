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
//= require_tree .
//= require bootstrap
//= require fancybox
//= require ckeditor/init

$(document).ready(function() {
   if ($('textarea').length > 0) {      
     var data = $('textarea');
     $.each(data, function(i) {
       CKEDITOR.replace(data[i].id);
     });    
   } 
});


//Timeline
$('.timeline-item-trigger span').click(function(){
	if($(this).hasClass('circle_plus')){$(this).removeClass('circle_plus').addClass('circle_minus');}
	else{$(this).removeClass('circle_minus').addClass('circle_plus');}
});


$('.timeline-item-title').click(function(){
	$trigger = $(this).parent().parent().find('.timeline-item-trigger span');
	if($trigger.hasClass('circle_plus')){$trigger.removeClass('circle_plus').addClass('circle_minus');}
	else{$trigger.removeClass('circle_minus').addClass('circle_plus');}
});

//Scroll
// top of page (action)
$('.scroller').click(function(e) {
	e.preventDefault();
	var targetScroll = $(this).attr('href');
	var documentBody = (($.browser.chrome)||($.browser.safari)) ? document.body : document.documentElement;
    $(documentBody).stop().animate({scrollTop: $(targetScroll).offset().top}, 1000,'easeInOutCubic');
});

//Sidebar height
	function sidebarHeight(){
		var height = $('#main-content').height();
		$('#sidebar .sidebar-nav').height(height);
	}
	sidebarHeight();
	
	$('#main-content').resize(function() {
		sidebarHeight();
	});

	//viewport listener : load script regarding viewport height
	viewportWidth = $(window).width();
	if(viewportWidth >= 768){viewPortContext = "desktop";}else{viewPortContext = "mobile";}
	
	function conditionalScripts(viewPortContext) {
	
		newViewportWidth = $(window).width();
		if(newViewportWidth >= 768){newViewPortContext = "desktop";}else{newViewPortContext = "mobile";}
		
		if(viewPortContext != newViewPortContext){
		
			if(newViewPortContext == 'desktop'){ 	//scripts for desktop only
				
				//Add Tooltips
				$('.tips').tooltip();
				$('.lightbox').unbind("click").fancybox({'type' : 'iframe', 'width' : '85%', 'height' : '95%'}
        );
				
			}else{ 									//scripts for mobile only
				
				//Remove Tooltips
				$('.tips').tooltip('destroy');
				$('.lightbox').unbind("click").photoSwipe();

			}
		}
		
		viewPortContext = newViewPortContext;
	}
	conditionalScripts(); //first execution
	
	$(window).resize(function() { //execution on window resizing
		conditionalScripts();
	});
	
	//Showing portfolio items
	$('#portfolio-items .more-info').click(function(e){
		e.preventDefault();
		var targetId = $(this).attr('href');
		$('#portfolio-items, #portfolio-filters').hide();
		$(targetId+', #portfolio-back').hide().removeClass('hidden').fadeIn('400', 'easeInOutCubic');
	});
	
	$('#portfolio-back').click(function(e){
		e.preventDefault();
		$('.portfolioitem-content:visible, #portfolio-back').hide().addClass('hidden');
		$('#portfolio-items, #portfolio-filters').fadeIn('400', 'easeInOutCubic');
		var documentBody = (($.browser.chrome)||($.browser.safari)) ? document.body : document.documentElement;
		$(documentBody).animate({scrollTop: $('#portfolio').offset().top}, 1000,'easeInOutCubic');
	});
	
	//portfolio item nav
	$('.portfolioitem-content .pager a').click(function(e){
		e.preventDefault();
		var targetId = $(this).attr('href');
		$('.portfolioitem-content:visible').hide().addClass('hidden');
		$(targetId).hide().removeClass('hidden').fadeIn('400', 'easeInOutCubic');
	});
	
	
	//blogitem hover
	$(document).on("mouseenter", '.blogitem, .portfolioitem', function(){
		$('.blogitem-hoverinfo, .portfolioitem-hoverinfo', this).stop(true, true).fadeIn('200', 'easeInOutCubic');
	});
	
	$(document).on("mouseleave", '.blogitem, .portfolioitem', function(){
		$('.blogitem-hoverinfo, .portfolioitem-hoverinfo', this).stop(true, true).fadeOut('200', 'easeInOutCubic');
	});
	
	