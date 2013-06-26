JE.AlignView = Ember.View.extend
	templateName: 'align'
	
	value: null
	
	setVal: (val)->
		@set 'value', val
		
	aL: (-> 
    @get("value") == 'left'
  ).property("value")
  
  aC: (-> 
    @get("value") == 'center'
  ).property("value")
  
  aR: (-> 
    @get("value") == 'right'
  ).property("value")
  
  aJ: (-> 
    @get("value") == 'justified'
  ).property("value")