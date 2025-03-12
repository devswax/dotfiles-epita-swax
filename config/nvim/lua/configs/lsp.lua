local configs = require "nvchad.configs.lspconfig"

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"

local servers = { "html", "cssls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
    auto_start = true,
  }
end

lspconfig.clangd.setup {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "c", "cpp", "cc", "objc", "objcpp", "h" },
  root_dir = lspconfig.util.root_pattern(
    ".clangd",
    ".clang-tidy",
    ".clang-format",
    "compile_commands.json",
    "compile_flags.txt",
    "configure.ac",
    ".git"
  ),
  auto_start = true,
  single_file_support = true,
}

-- lua
lspconfig.lua_ls.setup {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
          [vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types"] = true,
          [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },

  lspconfig.pyright.setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  },



  lspconfig.sqlls.setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
    default_config = {
      cmd = { "sql-language-server", "up", "--method", "stdio" },
      filetypes = { "sql", "mysql" },
      settings = {},
    },
  },

  lspconfig.eslint.setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  },

  lspconfig.bashls.setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  },
}
