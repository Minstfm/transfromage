local Client = require("api/Client/init")

local ByteArray = require("classes/ByteArray")

--[[@
	@name setDeleteRank
	@desc Remove a rank.
	@desc /!\ Note that this method will not cover errors if the account is not in a tribe or does not have permissions.
	@param rankID<int> Rank id to be removed.
]]
Client.setDeleteRank = function(self, rankID)
	self:sendTribulle(ByteArray:new():write16(120):write32(8):write8(rankID))
end