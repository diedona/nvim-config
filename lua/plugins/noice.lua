return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		-- Your configuration options go here.
		-- This example enables the popup for the command line
		cmdline = {
			enabled = true,
			view = "cmdline_popup",
		},
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
}
