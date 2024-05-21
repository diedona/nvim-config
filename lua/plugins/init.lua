return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre", "BufNewFile", "InsertLeave" }, -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "luacheck",
        "pyright",
        "black",
        "mypy",
        "ruff",
      },
      automatic_installation = true,
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },

  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = { "TroubleToggle", "Trouble" },
    keys = {
      { "<leader>t", desc = "Trouble" },
      { "<leader>tt", "<cmd>TroubleToggle<cr>", desc = "Trouble Toggle" },
      { "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Trouble Toggle Workspace" },
    },
  },

  require "configs.nvim-lint",
}
