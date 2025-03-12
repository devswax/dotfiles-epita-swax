local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- Web
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    -- C - CPP
    c = { "clang_format" },
    h = { "clang_format" },
    cpp = { "clang_format" },
    -- Rust
    rust = { "rustfmt" },
    -- python
    python = { "black" },

  },
  formatters = {
    shfmt = { prepend_args = { "-i", "4" } },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
  -- log_level = vim.log.levels.ERROR,
}

require("conform").setup(options)
