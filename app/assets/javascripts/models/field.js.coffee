JE.Field = DS.Model.extend
	
	name: DS.attr "string", defaultValue: "field"
	region: DS.attr "string", defaultValue: "cover"
	top: DS.attr "string", defaultValue: 10
	left: DS.attr "string", defaultValue: 10
	width: DS.attr "string", defaultValue: 200
	height: DS.attr "string", defaultValue: 50
	
	fontFamily: DS.attr "string", defaultValue: "helvetica"
	
	image: DS.attr "string", defaultValue: ""
	color: DS.attr "string", defaultValue: "#888"
	bg: DS.attr "string", defaultValue: "#FFF"
	editable: DS.attr "boolean", defaultValue: false
	hasTextShadow: DS.attr "boolean", defaultValue: false
	textAlign: DS.attr "string", defaultValue: "left"
	letterSpacing: DS.attr "number", defaultValue: 1
	lineHeight: DS.attr "number", defaultValue: 20
	text: DS.attr "string", defaultValue: "Enter text here"
	fontSize: DS.attr "number", defaultValue: 20
	textShadow: DS.attr "string", defaultValue: "#000"
	wordSpacing: DS.attr "number", defaultValue: 1
	
	card: DS.belongsTo "JE.Card"