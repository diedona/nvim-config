return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {},
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"javascript",
				"typescript",
				"tsx",
				"css",
				"html",
				"lua",
				"c_sharp",
			},
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			pairs = {
				enable = true,
			},
		})
	end,
}
