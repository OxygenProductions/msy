# http://emberjs.com/guides/models/defining-a-store/

JE.Store = DS.Store.extend
  adapter: DS.RESTAdapter.create()