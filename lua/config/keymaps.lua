vim.g.mapleader = " "
vim.g.maplocalleader = " "
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<TAB>", ">>", opts)
vim.keymap.set("n", "<S-TAB>", "<<", opts)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>U", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<leader>e", function()
	require("oil").toggle_float()
end)
-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
-- vim.keymap.set("n", "<leader>nt", "NvimTreeToggle")
-- vim.keymap.set("n", "<leader>nt", "NvimTreeToggle")

-- vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Buffer Navigation
vim.keymap.set("n", "<leader>bn", "bnext") -- Next buffer
vim.keymap.set("n", "<leader>bp", "bprevious") -- Prev buffer
vim.keymap.set("n", "<leader>bb", "e #") -- Switch to Other Buffer
vim.keymap.set("n", "<leader>`", "e #") -- Switch to Other Buffer

-- Move Lines
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Pane and Window Navigation
vim.keymap.set("n", "<C-h>", "<C-w>h") -- Navigate Left
vim.keymap.set("n", "<C-j>", "<C-w>j") -- Navigate Down
vim.keymap.set("n", "<C-k>", "<C-w>k") -- Navigate Up
vim.keymap.set("n", "<C-l>", "<C-w>l") -- Navigate Right
vim.keymap.set("t", "<C-h>", "wincmd h") -- Navigate Left
vim.keymap.set("t", "<C-j>", "wincmd j") -- Navigate Down
vim.keymap.set("t", "<C-k>", "wincmd k") -- Navigate Up
vim.keymap.set("t", "<C-l>", "wincmd l") -- Navigate Right
vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>") -- Navigate Left
vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>") -- Navigate Down
vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>") -- Navigate Up
vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>") -- Navigate Right

-- Window Management
vim.keymap.set("n", "<leader>sv", "vsplit") -- Split Vertically
vim.keymap.set("n", "<leader>sh", "split") -- Split Horizontally
vim.keymap.set("n", "<C-Up>", "resize -2")
vim.keymap.set("n", "<C-Down>", "resize +2")
vim.keymap.set("n", "<C-Left>", "vertical resize -2")
vim.keymap.set("n", "<C-Right>", "vertical resize +2")

-- Show Full File-Path
-- mapkey("<leader>pa", "ShowPath", "n") -- Show Full File Path

-- Indenting
vim.keymap.set("v", "<", "<gv", { silent = true, noremap = true })
vim.keymap.set("v", ">", ">gv", { silent = true, noremap = true })

vim.keymap.set("v", "<leader>p", '"_dP', opts)

local api = vim.api

-- toggleterm

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
-- Comments
api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false })
