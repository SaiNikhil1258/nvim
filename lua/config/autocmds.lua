local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local defaults = augroup("Defaults", {})
vim.api.nvim_create_augroup("AutoFormat", {})

vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_yank", {}),
	desc = "Hightlight selection on yank",
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 500 })
	end,
})
--
--[[ autocmd("TextYankPost", {
	desc = "Highlight on yank",
	group = defaults,
	callback = function()
		vim.highlight.on_yank()
	end,
}) ]]

--
-- vim.api.nvim_create_autocmd(
--         "BufWritePost",
--     {
--         pattern = "*.py",
--         group = "AutoFormat",
--         callback = function()
--             vim.cmd("silent !black --quiet %")
--             vim.cmd("edit")
--         end,
--     }
-- )
--
-- vim.api.nvim_create_autocmd(
--     "BufWritePost",
--     {
--         pattern = "*.lua",
--         group = 'AutoFormat',
--         callback = function()
--             vim.lsp.buf.format({ async = false })
--         end
--     }
-- )
--
-- vim.api.nvim_create_autocmd(
--     "BufWritePost",
--     {
--         pattern = {"*.js", "*.ts", "*.tsx", "*.jsx"},
--         group = 'AutoFormat',
--         callback = function()
--             vim.lsp.buf.format({ async = false })
--         end
--     }
-- )
