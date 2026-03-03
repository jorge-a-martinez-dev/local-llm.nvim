-- plugin/local_llm.lua

if vim.g.loaded_local_llm then
	return
end
vim.g.loaded_local_llm = true

vim.api.nvim_create_user_command("LLM", function()
	vim.notify("local-llm.nvim is installed. Features coming soon.")
end, {})
