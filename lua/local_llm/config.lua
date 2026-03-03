-- lua/local_llm/config.lua

local M = {}

M.options = {
	debug = {
		enabled = false,
	},
	project = {
		inject_charter = true,
		inject_milestone = true,
		charter_path = ".local-llm/charter.md",
		milestone_path = ".local-llm/milestone.md",
	},
}

local function deep_merge(tbl1, tbl2)
	return vim.tbl_deep_extend("force", tbl1, tbl2 or {})
end

function M.setup(user_opts)
	M.options = deep_merge(M.options, user_opts or {})
end

return M
