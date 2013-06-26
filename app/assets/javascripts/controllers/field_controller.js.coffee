JE.FieldController = Ember.ObjectController.extend
	
	theStyle: (->
		s =  'position:absolute;'
		
		#dimensions
		s += 'top:'+@get('top')+'px;'
		s += 'left:'+@get('left')+'px;'
		s += 'width:'+@get('width')+'px;'
		s += 'height:'+@get('height')+'px;'
		
		#other
		s += 'background-color:'+@get('bg')+';'
		
		#font
		s += 'color:'+@get('color')+';';
		s += 'font-family:'+@get('fontFamily')+';'
		s += 'font-size:'+@get('fontSize')+'px;'
		s += 'letter-spacing:'+@get('letterSpacing')+'px;'
		s += 'word-spacing:'+@get('wordSpacing')+'px;'
		s += 'line-height:'+@get('lineHeight')+'px;'
		s += 'text-align:'+@get('textAlign')+';'
		s += 'text-shadow: 0 0 5px '+@get('textShadow')+';' if @get('hasTextShadow')
		s
	).property "top", "left", "width", "height", "fontSize", "letterSpacing", "wordSpacing", "lineHeight", "textAlign", "color", "hasTextShadow", "textShadow", 'fontFamily', 'bg'
	
	theImage: (->
		@get('image')
	).property 'image'
	
	hasImage: (->
		!Ember.isEmpty @get('image')
	).property 'image'
		
	isActive: (->
		return @get("card.field.id") == @get("id")
	).property "card.field.is"
	
	setPosition: (top, left)->
		@set 'top', top
		@set 'left', left
		
	setSize: (width, height)->
		@set 'width', width
		@set 'height', height