return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	config = function()
		require("nvim-tree").setup({
			filters = {
				dotfiles = false,
			},
			view = {
				adaptive_size = true,
			},
		})
	end,
	-- vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]),
}
