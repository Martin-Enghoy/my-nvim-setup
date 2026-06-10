-- Some stuff that runs automatically when I code

local on_attach = require("utils.lsp").on_attach

-- Format on Save using efm langserver and configured formatters
local lsp_fmt_group = vim.api.nvim_create_augroup("FormatOnSaveGroup", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  group = lsp_fmt_group,
  callback = function()
    require("mini.trailspace").trim()
    local efm = vim.lsp.get_clients({ name = "efm" })
    if vim.tbl_isempty(efm) then
      return
    end
    vim.lsp.buf.format({ name = "efm", async = true })
  end,
})
