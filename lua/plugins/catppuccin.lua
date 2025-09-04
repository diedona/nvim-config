return {
	"catppuccin/nvim",
	name = "catpuccin",
	priority = 1000,
	lazy = false,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = false,
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}
