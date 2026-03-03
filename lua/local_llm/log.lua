-- lua/local_llm/log.lua
local M = {}
local Config = require("local_llm.config")

-- Set at runtime by init.lua before calling provider.
M._buf = nil

function M.set_buf(buf)
	M._buf = buf
end

function M.line(msg)
	if not (Config.options.debug and Config.options.debug.enabled) then
		return
	end
	local buf = M._buf
	if not buf or not vim.api.nvim_buf_is_valid(buf) then
		-- fallback to messages if buffer isn't ready
		vim.schedule(function()
			vim.notify("[local-llm] " .. msg)
		end)
		return
	end

	vim.schedule(function()
		local ok, UI = pcall(require, "local_llm.ui")
		if ok and UI and UI.append then
			UI.append(buf, "[log] " .. msg .. "\n")
		end
	end)
end

return M
