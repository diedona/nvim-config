return {
	"L3MON4D3/LuaSnip",
	-- Configura a navegação dentro de snippets
	config = function()
		local ls = require("luasnip")

		-- Mapeia as teclas para a navegação de placeholders
		vim.keymap.set({ "i", "s" }, "<Tab>", function()
			ls.jump(1)
		end, { silent = true })

		vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
			ls.jump(-1)
		end, { silent = true })
	end,
}
