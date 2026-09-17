------------------------------------------- Optimization -------------------------------------------
local string_toNickname = string.toNickname
----------------------------------------------------------------------------------------------------

local onTribeChangeMOTD = function(self, packet, connection, tribulleId)
	local memberName = packet:readUTF()
	local tribeNewMOTD = packet:readUTF()

	--[[@
		@name tribeChangeMOTD
		@desc Triggered when a member changes the MOTD.
		@param memberName<string> The member who left the tribe.
		@param tribeNewMOTD<string> The new tribe MOTD.
	]]
	self.event:emit("tribeChangeMOTD", string_toNickname(memberName, true), tribeNewMOTD)
end

return { onTribeChangeMOTD, 125 }