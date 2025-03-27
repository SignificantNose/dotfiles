return {
	"shaunsingh/nord.nvim",
	config = function()
		vim.g.nord_disable_background = true
		vim.g.nord_italic = false
		vim.g.nord_borders = true
		vim.cmd([[colorscheme nord]])
	end,
}
