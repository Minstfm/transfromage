local Client = require("api/Client/init")

local ByteArray = require("classes/ByteArray")

local identifier = require("api/enum").identifier.popupAnswer

--[[@
	@name sendPopupAnswer
	@desc Sends a popupAnswer.
	@param popupId<int> addPopup id.
	@param textAnswer<string> addPopup answer.
]]
Client.sendPopupAnswer = function(self, popupId, textAnswer)
  self.bulleConnection:send(identifier, ByteArray:new():write32(popupId):writeUTF(textAnswer))
end
