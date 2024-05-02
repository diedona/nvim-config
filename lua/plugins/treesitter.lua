return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require('nvim-treesitter.configs').setup({
      
      indent = {
        enable = true
      },

      autotag = {
        enable = true
      },

      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "lua",
        "python"
      }
      
    })
  end,
}
