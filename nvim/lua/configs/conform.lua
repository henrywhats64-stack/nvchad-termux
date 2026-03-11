local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "eslint_d" },
    typescript = { "eslint_d" },
    javascriptreact = { "eslint_d" },
    typescriptreact = { "eslint_d" },
    css = { "tierlist" },
    html = { "tierlist" },
  },

  -- format_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 50,
  --   lsp_fallback = false,
  -- },
}

return options
