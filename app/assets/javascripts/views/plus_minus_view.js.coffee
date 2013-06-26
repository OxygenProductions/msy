JE.PlusMinusView = Ember.View.extend
	templateName: 'plus_minus'
	
	value: null
		
	plusVal: ()->
		@set 'value', @get('value') + 1
		
	minusVal: ()->
		@set 'value', @get('value') - 1