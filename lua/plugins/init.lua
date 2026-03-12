return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "sphamba/smear-cursor.nvim",
    lazy = false,
    opts = require "configs.smearcursor",
  },

  {
    "OXY2DEV/markview.nvim",
    lazy = false,
  },

  {
    "eandrju/cellular-automaton.nvim",
    lazy = false,
  },

  {
    "lewis6991/gitsigns.nvim",
    event = "User FilePost",
    opts = function()
      return require "configs.gitsigns"
    end,
  },

  {
    "mrcjkb/rustaceanvim",
    version = "^8",
    lazy = false,
    init = function()
      vim.g.rustaceanvim = {
        tools = {},

        server = {
          default_settings = {
            ["rust-analyzer"] = {
              cargo = {
                allFeatures = true,
              },
              checkOnSave = true,
            },
          },
        },

        dap = {
          autoload_configurations = true,
        },
      }
    end,
  },

  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },

  {
    "mfussenegger/nvim-dap",
    lazy = true,
  },

  {
    "rcarriga/nvim-dap-ui",
    ft = { "rust", "python" },
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      require "configs.nvim-dap-ui"
    end,
  },

  {
    "theHamsta/nvim-dap-virtual-text",
    ft = { "rust", "python" },
    dependencies = { "mfussenegger/nvim-dap" },
    opts = function()
      return require "configs.nvim-dap-virtual-text"
    end,
  },
}
