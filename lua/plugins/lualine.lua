local colors = {
	grey = "#303030",
	blue = "#80a0ff",
	cyan = "#79dac8",
	black = "#080808",
	white = "#c6c6c6",
	red = "#ff5189",
	violet = "#d183e8",
}

local bubbles_theme = {
	normal = {
		a = { fg = colors.white, bg = colors.grey },
		b = { fg = colors.white, bg = colors.grey },
		c = { fg = colors.white, bg = colors.grey },
	},

	insert = { a = { fg = colors.white, bg = colors.grey } },
	visual = { a = { fg = colors.white, bg = colors.grey } },
	replace = { a = { fg = colors.white, bg = colors.grey } },

	inactive = {
		a = { fg = colors.white, bg = colors.grey },
		b = { fg = colors.white, bg = colors.grey },
		c = { fg = colors.white, bg = colors.grey },
	},
}

local config = function()
	require("lualine").setup({
		options = {
			theme = bubbles_theme,
			globalstatus = true,
			component_separators = { left = "|", right = "|" },
			section_separators = { left = "|", right = "|" },
		},
		sections = {
			lualine_a = { "mode" },
			lualine_c = { { "filename", path = 3 } },
			lualine_x = { "encoding", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		tabline = {},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}
