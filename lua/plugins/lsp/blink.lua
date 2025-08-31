return {
	"Saghen/blink.cmp",
	dependencies = {
		"L3MON4D3/LuaSnip",
	},
	build = "cargo build --release",
	opts = {
		-- Outras configurações...
		keymap = {
			-- Mapeamento para disparar manualmente
			["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },

			-- Mapeamentos padrão para navegação na lista
			["<Tab>"] = {
				function(cmp)
					return cmp.select_next()
				end,
				"snippet_forward",
				"fallback",
			},
			["<S-Tab>"] = {
				function(cmp)
					return cmp.select_prev()
				end,
				"snippet_backward",
				"fallback",
			},
			["<CR>"] = { "accept", "fallback" },
		},
	},
}
