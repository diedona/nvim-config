local mapvimkey = require("util.keymapper").mapvimkey

return {
  'nvim-telescope/telescope.nvim',
  lazy = false,
  tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').setup({
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = "move_selection_next",
            ["<C-k>"] = "move_selection_previous"
          },
        },
      }
    })
  end,
  keys = {
		mapvimkey("<leader>fk", "Telescope keymaps", "Show Keymaps"),
		mapvimkey("<leader>fh", "Telescope help_tags", "Show Help Tags"),
		mapvimkey("<leader>ff", "Telescope find_files", "Find Files"),
		mapvimkey("<leader>fg", "Telescope live_grep", "Live Grep"),
		mapvimkey("<leader>fb", "Telescope buffers", "Find Buffers"),
	},
}
