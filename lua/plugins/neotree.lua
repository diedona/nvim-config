return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		default_component_configs = {
			filesystem = {
				bind_to_cwd = true,
				follow_current_file = {
					enabled = true,
					leave_dirs_open = false,
				},
			},
		},
	},
	config = function()
		vim.keymap.set({ "n", "v" }, "\\", ":Neotree toggle reveal_force_cwd<CR>", { noremap = true, silent = true })
	end,
}
