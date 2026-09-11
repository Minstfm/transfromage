local Client = require("api/Client/init")

local ByteArray = require("classes/ByteArray")

local identifier = require("api/enum").identifier.luaMouseClick
--[[@
	@name sendLuaMouseClick
	@desc Sends a mouse click.
	@param mouseX<int> The mouse X position.
	@param mouseY<int> The mouse Y position.
]]
Client.sendLuaMouseClick = function(self, mouseX, mouseY)
	self.bulleConnection:send(identifier, ByteArray:new():writeSLEB128(mouseX):writeSLEB128(mouseY))
end
