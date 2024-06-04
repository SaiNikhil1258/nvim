local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local defaults = augroup("Defaults", {})


autocmd("TextYankPost", {
    desc = "Highlight on yank",
    group = defaults,
    callback = function() vim.highlight.on_yank() end,
})



-- auto-format on save
local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})
vim.api.nvim_create_autocmd("BufWritePre", {
    group = lsp_fmt_group,
    callback = function()
        local efm = vim.lsp.get_active_clients({ name = "efm" })

        if vim.tbl_isempty(efm) then
            return
        end

        vim.lsp.buf.format({ name = "efm", async = true })
    end,
})
