JE.PlusMinusView = Ember.View.extend
	templateName: 'plus_minus'
	
	value: null
	
	test: 1
	
	plusVal: (val)->
		@set 'test', @get('test') + 1
		
	minusVal: (val)->
		@set 'test', @get('test') - 1