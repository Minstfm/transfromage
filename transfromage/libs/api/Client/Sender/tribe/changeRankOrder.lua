local Client = require("api/Client/init")

local ByteArray = require("classes/ByteArray")

--[[@
	@name changeRankOrder
	@desc Swap rank position with another rank.
	@desc /!\ Note that this method will not cover errors if the account is not in a tribe or does not have permissions.
	@param rankUp<int> Rank id that will receive new position.
	@param rankDown<int> Rank id that will receive current position.
]]
Client.changeRankOrder = function(self, rankUp, rankDown)
	self:sendTribulle(ByteArray:new():write16(122):write32(12):write8(rankUp):write8(rankDown))
end
