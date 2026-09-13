local Client = require("api/Client/init")

local ByteArray = require("classes/ByteArray")

local identifier = require("api/enum").identifier.luaContactListener

--[[@
  @name sendContactListener
  @desc Sends a ground contact.
  @param contactID<int> id of the contact ground.
  @param playerX<int> player x position at contact.
  @param playerY<int> player y position at contact.
  @param contactX<int> x position of the ground contact.
  @param contactY<int> y position of the ground contact.
  @param playerVX<int> player x velocity at contact.
  @param playerVY<int> player y velocity at contact.
]]
Client.sendContactListener = function(self, contactID, playerX, playerY, contactX, contactY, playerVX, playerVY)
	self.bulleConnection:send(identifier, ByteArray:new():writeSLEB128(contactID):writeSLEB128(playerX):writeSLEB128(playerY):writeSLEB128(contactX):writeSLEB128(contactY):writeSLEB128(playerVX / 100):writeSLEB128(playerVY / 100))
end
