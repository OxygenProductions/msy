JE.SendRoute = Ember.Route.extend
	model: ->
		JE.Card.find()