$(document).ready ->
	window.footnote_uniqid = 0
	
	get_uniqid = ->
		window.footnote_uniqid += 1
		"noamsml-fn-elem-" + (window.footnote_uniqid-1)
	
	$(".fn-document").each (index) ->
		# $(this).data("fn-footnum", 1)
		if $(this).children(".footnote-holder").length == 0
			$(this).append("<div class='footnote-holder'></div>")
		
		holder = $(this).children(".footnote-holder").first()
		
		$(this).children(".footnote").each (index) ->
			data = $(this).html()
			id = get_uniqid()
			holder.append("<div class='fn-foot'><a class='fn-anchor' id='#{id}' href='#'>#{index+1}.</a>&nbsp;&nbsp;#{data}</div>")
			$(this).replaceWith("<a class='footnote' href='##{id}'>#{index+1}</a>")
		
		
			
	
