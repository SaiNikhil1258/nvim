local mapkey = require("util.keymapper").mapvimkey

local opts = {noremap=true, silent=true}


vim.keymap.set('n', '<TAB>', '>>', opts)
vim.keymap.set('n', '<S-TAB>', '<<', opts)


vim.keymap.set('n', '<leader>e', vim.cmd.Ex)

vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Buffer Navigation
mapkey("<leader>bn", "bnext", "n") -- Next buffer
mapkey("<leader>bp", "bprevious", "n") -- Prev buffer
mapkey("<leader>bb", "e #", "n") -- Switch to Other Buffer
mapkey("<leader>`", "e #", "n") -- Switch to Other Buffer


-- Move Lines
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })


-- Pane and Window Navigation
mapkey("<C-h>", "<C-w>h", "n") -- Navigate Left
mapkey("<C-j>", "<C-w>j", "n") -- Navigate Down
mapkey("<C-k>", "<C-w>k", "n") -- Navigate Up
mapkey("<C-l>", "<C-w>l", "n") -- Navigate Right
mapkey("<C-h>", "wincmd h", "t") -- Navigate Left
mapkey("<C-j>", "wincmd j", "t") -- Navigate Down
mapkey("<C-k>", "wincmd k", "t") -- Navigate Up
mapkey("<C-l>", "wincmd l", "t") -- Navigate Right
mapkey("<C-h>", ":TmuxNavigateLeft<CR>", "n") -- Navigate Left
mapkey("<C-j>", ":TmuxNavigateDown<CR>", "n") -- Navigate Down
mapkey("<C-k>", ":TmuxNavigateUp<CR>", "n") -- Navigate Up
mapkey("<C-l>", ":TmuxNavigateRight<CR>", "n") -- Navigate Right


-- Window Management
mapkey("<leader>sv", "vsplit", "n") -- Split Vertically
mapkey("<leader>sh", "split", "n") -- Split Horizontally
mapkey("<C-Up>", "resize +2", "n")
mapkey("<C-Down>", "resize -2", "n")
mapkey("<C-Left>", "vertical resize +2", "n")
mapkey("<C-Right>", "vertical resize -2", "n")


-- Show Full File-Path
mapkey("<leader>pa", "ShowPath", "n") -- Show Full File Path



-- Notes
mapkey("<leader>ng", "Neorg workspace general", "n")
mapkey("<leader>nw", "Neorg workspace work", "n")
mapkey("<leader>ny", "Neorg workspace youtube", "n")



-- Indenting
vim.keymap.set("v", "<", "<gv", { silent = true, noremap = true })
vim.keymap.set("v", ">", ">gv", { silent = true, noremap = true })

vim.keymap.set('v', '<leader>p', '"_dP', opts)

local api = vim.api



-- Comments
api.nvim_set_keymap("n", "<C-_>", "gtc", { noremap = false })
api.nvim_set_keymap("v", "<C-_>", "goc", { noremap = false })
