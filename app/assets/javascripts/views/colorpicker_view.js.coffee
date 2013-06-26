JE.ColorpickerView = Ember.View.extend
	templateName: 'colorpicker'
	
	value: null
	
	didInsertElement: ()->
		me = @
		@$(".colorpicker").spectrum(
			color: me.get("value")
			clickoutFiresChange: true
			cancelText: '',
			move: (color)->
				me.set( 'value', color.toHexString() )
				return
		)
		return
		
	theStyle: (->
		s = 'background-color:'+@get('value')+';';
	).property "value"