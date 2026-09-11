local Client = require("api/Client/init")

local ByteArray = require("classes/ByteArray")

local identifier = require("api/enum").identifier.luaKeyboard
--[[@
	@name sendLuaKeyboard
	@desc Sends a keyboard event.
	@param keyCode<int> Key value.
	@param isDown<boolean> If pressed or released.
	@param playerX<int> Player x position on event.
	@param playerY<int> Player y position on event.
	@param velocityX<int> Player x velicity on event.
	@param velocityY<int> Player y velocity on event.
]]
Client.sendLuaKeyboard = function(self, keyCode, isDown, playerX, playerY, velocityX, velocityY)
	self.bulleConnection:send(identifier, ByteArray:new():writeSLEB128(keyCode):writeBool(isDown):writeSLEB128(playerX):writeSLEB128(playerY):writeSLEB128(velocityX * 100):writeSLEB128(velocityY * 100))
end
