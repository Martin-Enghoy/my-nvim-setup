-- Kanagawa setup

return {
	"rebelot/kanagawa.nvim",
	name = "kanagawa",
	priority = 1000,
	lazy = false,
	config = function()
		vim.cmd("colorscheme kanagawa")
		require("kanagawa").setup({
			transparent_background = true
		})
	end,
}
