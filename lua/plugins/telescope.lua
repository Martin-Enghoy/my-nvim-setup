local config = function()
  local telescope = require('telescope')
  telescope.setup({
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
        },
      },
    },
    pickers = {
      find_files = {
        theme = "dropdown",
        previewer = false,
        hidden = true,
      },
      live_grep = {
        theme = "dropdown",
        previewer = false,
      },
      find_buffers = {
        theme = "dropdown",
        previewer = false,
      },
    },
  })
end

return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.3',
  lazy = true,
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = config,
  keys = {
    { "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
  }
}
