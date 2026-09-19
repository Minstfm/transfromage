local onFriendListLoaded = function(self, packet, connection, tribulleId)
	local friendPlayer = Friend:new(self, packet)

	--[[@
		@name friendFieldChange
		@desc Triggered when the friend changes any field.
		@param friendPlayer<table> The data of the friend.
		@struct @friendPlayer {
			id = 0, -- The player id.
			playerName = "", -- The soulmate's name.
			gender = 0, -- The soulmate's gender. Enum in enum.gender.
			isFriend = true, -- Whether the soulmate has the account as a friend (added back) or not.
			isConnected = true, -- Whether the soulmate is online or offline.
			gameId = 0, -- The id of the game where the soulmate is connected. Enum in enum.game.
			roomName = "", -- The name of the room the soulmate is in.
			lastConnection = 0 -- Timestamp of when the soulmate was last online.
		}
	]]
	self.event:emit("friendFieldChange", friendPlayer)
end

return { onFriendFieldChange, 35 }
