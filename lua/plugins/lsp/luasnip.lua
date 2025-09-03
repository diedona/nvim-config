return {
	"L3MON4D3/LuaSnip",
	dependencies = {
		"rafamadriz/friendly-snippets",
	},
	-- Configura a navegação dentro de snippets
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()

		local ls = require("luasnip")

		-- Mapeia as teclas para a navegação de placeholders
		vim.keymap.set({ "i", "s" }, "<C-n>", function()
			ls.jump(1)
		end, { silent = true })

		vim.keymap.set({ "i", "s" }, "<C-p>", function()
			ls.jump(-1)
		end, { silent = true })
	end,
}
