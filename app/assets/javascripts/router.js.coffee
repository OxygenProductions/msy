# For more information see: http://emberjs.com/guides/routing/

JE.Router.map ()->
	@resource "manage", path: "/manage/:id"
	@resource "send", path: "/send/:id"
	return