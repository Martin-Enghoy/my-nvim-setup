-- nvim-tree.lua - File explorer

return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons", -- optional, for file icons
	},
	config = function()
		require("nvim-tree").setup({
			filters = {
				dotfiles = false, -- Show hidden files (dotfiles)
			},
			view = {
				adaptive_size = true,
			},
		})
		-- Keybind to toggle or focus nvim-tree
		 vim.keymap.set('n', '<leader>e', function()
			local api = require("nvim-tree.api")
			local view = require("nvim-tree.view")

			if view.is_visible() then
				api.tree.focus()
			else
				api.tree.toggle()
			end
     end, { noremap = true, silent = true, desc = "Toggle/Focus NvimTree" })
	end,
}
