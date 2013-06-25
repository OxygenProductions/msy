JE.Field = DS.Model.extend
	fieldType: DS.attr "string"
	name: DS.attr "string"
	region: DS.attr "string"
	top: DS.attr "string"
	left: DS.attr "string"
	width: DS.attr "string"
	height: DS.attr "string"
	
	image: DS.attr "string"
	fontFamily: DS.attr "string"
	
	editable: DS.attr "boolean"
	hasTextShadow: DS.attr "boolean"
	textAlign: DS.attr "string"
	letterSpacing: DS.attr "number"
	lineHeight: DS.attr "number"
	text: DS.attr "string"
	fontSize: DS.attr "number"
	textShadow: DS.attr "string"
	wordSpacing: DS.attr "string"
	
	card: DS.belongsTo "JE.Card"