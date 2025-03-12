vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4

return {
  -- Formatting
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    ---@diagnostic disable-next-line: different-requires
    opts = require "configs.conform",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter",
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = require "configs.nvim-tree",
  },

  {
    "williamboman/mason.nvim",
    opts = require "configs.mason",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "nvchad.configs.lspconfig"
      require "configs.lsp"
    end, -- Override to setup mason-lspconfig
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup { enable = true }
    end,
    cmd = { "TSContextDisable", "TSContextEnable", "TSContextToggle" },
    lazy = false,
  },

  {
    "folke/which-key.nvim",
    keys = function()
      ---@type (string|LazyKeymaps)[]
      return { "<leader>" }
    end,
    opts = {
      motions = { count = false },
      plugins = {
        marks = false,
        registers = false,
        presets = {
          operators = false,
          motions = false,
          text_objects = false,
          windows = false,
          nav = true,
          z = true,
          g = true,
        },
      },
    },
  },
  {
    "tpope/vim-dadbod",
    lazy = false,
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    lazy = false,
  },
}
