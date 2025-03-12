return {
  auto_install = true,
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "css-lsp",
    "html-lsp",
    "shfmt",

    -- c / cpp
    "clangd",
    "clang-format",

    -- rust
    "rust-analyzer",

    -- Python
    "pyright",
    "black",
    -- SQL
    "sqlls",
  },
}
