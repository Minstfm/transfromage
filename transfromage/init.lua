------------------------------------------- Optimization -------------------------------------------
local require = require
----------------------------------------------------------------------------------------------------

-- Initializes all extensions
require("utils/extensions")

-- Checks for API updates
local APIVersion = require("./update")

return {
	version = APIVersion,

	Client = require("api/Client"),
	ByteArray = require("classes/ByteArray"),
	Translation = require("classes/Translation"),

	enum = require("api/enum"),
	encode = require("utils/encode")
}