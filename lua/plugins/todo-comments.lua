return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {},
	event = "BufRead",
	config = function()
		require("todo-comments").setup()
	end,
	-- HACK:
	-- FIX:
	-- NOTE:
	-- FIXME:
	-- WARNING:
	-- BUG:
	-- PERF:
}
