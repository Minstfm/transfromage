local Client = require("api/Client/init")

local ByteArray = require("classes/ByteArray")

local identifier = require("api/enum").identifier.luaInteractNPC

--[[@
  @name sendNPCInteraction
  @desc Sends NPC interaction.
  @param npcName<string> name of the npc.
]]
Client.sendNPCInteraction = function(self, npcName)
	self.bulleConnection:send(identifier, ByteArray:new():writeUTF(npcName))
end
