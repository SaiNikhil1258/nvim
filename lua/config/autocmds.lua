local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local defaults = augroup("Defaults", {})
vim.api.nvim_create_augroup("AutoFormat", {})

autocmd("TextYankPost", {
	desc = "Highlight on yank",
	group = defaults,
	callback = function()
		vim.highlight.on_yank()
	end,
})

