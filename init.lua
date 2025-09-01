require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })

	if vim.v.shell_error ~= 0 then
		error("Error clonin lazy.nvim:\n" .. out)
	end
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		opts = {},
		config = function()
			require("neo-tree").setup({})

			vim.keymap.set(
				{ "n", "v" },
				"<leader>e",
				":Neotree toggle position=left<CR>",
				{ noremap = true, silent = true }
			)
		end,
	},

	require("plugins.catppuccin"),

	require("plugins.which"),

	require("plugins.mini"),

	require("plugins.lualine"),

	require("plugins.bufferline"),

	require("plugins.telescope"),

	require("plugins.lazydev"),

	require("plugins.lsp.luasnip"),

	require("plugins.lsp.blink"),

	require("plugins.lsp"), -- goes to plugins/lsp/init.lua

	require("plugins.treesitter"),

	require("plugins.lsp.typescript"),

	require("plugins.lsp.roslyn"),

	require("plugins.tiny"),

	require("plugins.lint"),

	require("plugins.conform"),

	require("plugins.markdown"),

	require("plugins.tmux"),
})
