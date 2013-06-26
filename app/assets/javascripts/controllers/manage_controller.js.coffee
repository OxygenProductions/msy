JE.ManageController = Ember.ObjectController.extend
	
	theFields: (->
		console.log "loaded!"
	).property 'fields.isLoaded'