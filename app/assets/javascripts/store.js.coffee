# http://emberjs.com/guides/models/defining-a-store/

JE.Store = DS.Store.extend
  adapter: 'DS.JEAdapter'

DS.JESerializer = DS.RESTSerializer.extend
  extract: (loader, json, type, record)->
  	console.log(json)
  	root = this.rootForType(type)
  	roots = this.pluralize(root)
  	emberRoot = root
  	@_super(loader, json, type, record)
  	return
  extractMany: (loader, json, type, records)->
  	console.log(json);
  	root = this.rootForType(type)
  	roots = this.pluralize(root)
  	emberRoot = roots
  	newJson = {}
  	newJson[emberRoot] = json[roots]
  	@_super(loader, newJson, type, records)
  	return

DS.JEAdapter = DS.RESTAdapter.extend
	bulkCommit: false
	serializer: DS.JESerializer
