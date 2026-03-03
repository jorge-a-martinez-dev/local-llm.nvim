-- lua/local_llm/init.lua

local M = {}

local Config = require("local_llm.config")

function M.setup(opts)
	Config.setup(opts or {})
end

return M
