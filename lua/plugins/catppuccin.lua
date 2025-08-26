return {
	"catppuccin/nvim",
	name = "catpuccin",
	priority = 1000,
	lazy = false,
	config = function()
		require("catppuccin").setup({
			flavour = "frappe",
			transparent_background = true,
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}
