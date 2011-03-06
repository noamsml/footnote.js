$(document).ready ->
	window.footnote_uniqid = 0
	
	get_uniqid = ->
		window.footnote_uniqid += 1
		"noamsml-fn-elem-" + (window.footnote_uniqid-1)
	
	$(".fn-document").each (index) ->
		# $(this).data("fn-footnum", 1)
		if $(".fn-holder", this).length == 0
			$(this).append("<div class='fn-holder'></div>")
		
		holder = $(".fn-holder", this).first()
		
		$(".footnote", this).each (index) ->
			data = $(this).html()
			id = get_uniqid()
			$(holder).append("<div class='fn-foot'><a class='fn-anchor' id='#{id}' href='##{id}-above'>#{index+1}.</a>&nbsp;&nbsp;#{data}</div>")
			$(this).replaceWith("<a class='footnote' href='##{id}' id='#{id}-above'>#{index+1}</a>")
		
		
			
	
