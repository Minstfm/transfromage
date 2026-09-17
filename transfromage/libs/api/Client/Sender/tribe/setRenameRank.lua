local Client = require("api/Client/init")

local ByteArray = require("classes/ByteArray")

--[[@
	@name setRenameRank
	@desc Rename the rank.
	@desc /!\ Note that this method will not cover errors if the account is not in a tribe or does not have permissions.
	@param rankID<int> The rank id.
	@param rankName<string> The new rank name.
]]
Client.setRenameRank = function(self, rankID, rankName)
	self:sendTribulle(ByteArray:new():write16(116):write32(10):write8(rankID):writeUTF(rankName))
end