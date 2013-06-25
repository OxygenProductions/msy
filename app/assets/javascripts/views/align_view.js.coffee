JE.AlignView = Ember.View.extend
	templateName: 'align'
	
	value: null
	
	test: "left"
	
	setVal: (val)->
		@set 'test', val
		
	aL: (-> 
    @get("test") == 'left'
  ).property("test")
  
  aC: (-> 
    @get("test") == 'center'
  ).property("test")
  
  aR: (-> 
    @get("test") == 'right'
  ).property("test")
  
  aJ: (-> 
    @get("test") == 'justified'
  ).property("test")