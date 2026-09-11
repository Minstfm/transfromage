local Client = require("api/Client/init")

local ByteArray = require("classes/ByteArray")

local identifier = require("api/enum").identifier.textAreaCallback

--[[@
	@name sendTextAreaCallback
	@desc Sends a textAreaCallback.
	@param textAreaId<int> textArea id.
	@param eventName<string> callBack name.
]]
Client.sendTextAreaCallback = function(self, textAreaId, eventName)
	self.bulleConnection:send(identifier, ByteArray:new():write32(textAreaId):writeUTF(eventName))
end
