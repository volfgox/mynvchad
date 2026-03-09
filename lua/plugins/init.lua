return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

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
}
