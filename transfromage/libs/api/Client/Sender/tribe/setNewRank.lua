local Client = require("api/Client/init")

local ByteArray = require("classes/ByteArray")

--[[@
	@name setNewRank
	@desc Makes a new rank.
	@desc /!\ Note that this method will not cover errors if the account is not in a tribe or does not have permissions.
	@param rankName<string> Rank name to be added.
]]
Client.setNewRank = function(self, rankName)
	self:sendTribulle(ByteArray:new():write16(118):write32(6):writeUTF(rankName))
end
