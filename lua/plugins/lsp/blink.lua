return {
	"Saghen/blink.cmp",
	dependencies = {
		"L3MON4D3/LuaSnip",
	},
	build = "cargo build --release",
	opts = {
		completion = {
			documentation = {
				auto_show = true,
			},
		},
		sources = {
			default = {
				"lsp",
				"buffer",
				"path",
				"snippets",
			},
		},
		keymap = {
			preset = "enter",
			["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
			["<C-e>"] = { "hide" },
		},
		signature = {
			enabled = true,
		},
	},
}
