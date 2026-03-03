-- lua/local_llm/util.lua

local M = {}

function M.read_file(path)
	local ok, lines = pcall(vim.fn.readfile, path)
	if ok and lines and #lines > 0 then
		return table.concat(lines, "\n")
	end
	return nil
end

return M
