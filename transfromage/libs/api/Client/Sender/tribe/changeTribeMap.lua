local Client = require("api/Client/init")

local ByteArray = require("classes/ByteArray")

--[[@
	@name changeTribeMap
	@desc Changes the map of the tribe.
	@desc /!\ Note that this method will not cover errors if the account is not in a tribe or does not have permissions.
	@param tribeMap<int> The map id to be set.
]]
Client.changeTribeMap = function(self, tribeMap)
	self:sendTribulle(ByteArray:new():write16(102):write32(8):write32(tribeMap))
end