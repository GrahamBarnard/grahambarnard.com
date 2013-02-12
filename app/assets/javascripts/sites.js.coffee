# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

  # counter = 30;
  # $("#timer").text(counter.toString())
  # 
  # id = setInterval ->
  #   counter--
  #   if counter < 0
  #     $("#timer").fadeOut
  #     clearInterval(id)
  #   else
  #     $("#timer").text(counter.toString())
  # , 1000

  $(document).ready ->
    $(".fancybox").fancybox({
      ajax : {
    	  type	: "GET"
        # onComplete : ->
        #           $('#fancybox-frame').load ->
        #             $('#fancybox-content').height($(this).contents().find('body').height())
        #             $('#fancybox-content').height($(this).contents().find('body').width())
      }
    })