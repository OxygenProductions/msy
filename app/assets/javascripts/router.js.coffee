# For more information see: http://emberjs.com/guides/routing/

JE.Router.map ()->
	@resource "create", path: "/create"
	@resource "send", path: "/send"
	return