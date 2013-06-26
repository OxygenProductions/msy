JE.FieldView = Ember.View.extend
	didInsertElement: ()->
		me = @
		@$(".field").draggable
			containment: '.boundry'
			stop: ( event, ui )->
				me.get('controller').setPosition(ui.position.top, ui.position.left)
				return
		@$(".field").resizable
			stop: ( event, ui )->
				me.get('controller').setSize(ui.size.width, ui.size.height)
				return
		return