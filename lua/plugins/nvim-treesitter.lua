local config = function()
  require("nvim-treesitter").setup({
    indent = {
      enable = true,
    },
    autotag = {
      enable = true,
    },
    ensure_installed = {
      "markdown",
      "json",
      "javascript",
      "typescript",
      "yaml",
      "html",
      "css",
      "bash",
      "lua",
      "dockerfile",
      "gitignore",
      "python",
      "vue",
      "go",
      "templ",
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_nvim_regex_highlighting = true,
    },
  })
end

return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  config = config
}
