local Client = require("api/Client/init")

local ByteArray = require("classes/ByteArray")

local identifier = require("api/enum").identifier.colorPick

--[[@
  @name sendColorPick
  @desc Sends a color.
  @param colorPickerId<int> colorPickerId color picker id selector.
  @param colorValue<int> value of the color.
]]
Client.sendColorPick = function(self, colorPickerId, colorValue)
	self.bulleConnection:send(identifier, ByteArray:new():write32(colorPickerId):write32(colorValue))
end
