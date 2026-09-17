local Client = require("api/Client/init")

local ByteArray = require("classes/ByteArray")

--[[@
	@name setSpiritualChief
	@desc Give spiritual chief to a member.
	@desc /!\ Note that this method will not cover errors if the account is not in a tribe or does not have permissions.
	@param memberName<string> Name of the member to get spiritual chief.
]]
Client.setSpiritualChief = function(self, memberName)
	self:sendTribulle(ByteArray:new():write16(126):write32(8):writeUTF(memberName))
end