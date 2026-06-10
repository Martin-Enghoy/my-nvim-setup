-- Neovim LSP Client config
-- Links
--    github             : https://github.com/neovim/nvim-lspconfig
--    mason.nvim         : https://github.com/mason-org/mason.nvim
--    efmls-configs-nvim : https://github.com/creativenull/efmls-configs-nvim
--    cmp-nvim-lsp       : https://github.com/hrsh7th/cmp-nvim-lsp

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },  -- LSP/DAP/Linter installer and manager
    "creativenull/efmls-configs-nvim",      -- Preconfigured EFM Language Server setups
    "hrsh7th/cmp-nvim-lsp",                 -- nvim-cp source for LSP-based completion
  },
  config = function()
    require("servers")
  end,
}
