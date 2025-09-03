return {
	"folke/persistence.nvim",
	lazy = false,
	opts = {
		-- add any custom options here
		need = 1,
	},
	keys = {
		{
			"<leader>Ss",
			function()
				require("persistence").load()
			end,
			desc = "Restore Session",
		},
		{
			"<leader>SS",
			function()
				require("persistence").select()
			end,
			desc = "Select Session",
		},
		{
			"<leader>Sl",
			function()
				require("persistence").load({ last = true })
			end,
			desc = "Restore Last Session",
		},
		{
			"<leader>Sd",
			function()
				require("persistence").stop()
			end,
			desc = "Don't Save Current Session",
		},
	},
	config = function(_, opts)
		require("persistence").setup(opts)

		-- Autocmd to load the last session on startup
		vim.api.nvim_create_autocmd("VimEnter", {
			group = vim.api.nvim_create_augroup("restore_last_session", { clear = true }),
			callback = function()
				if vim.fn.argc(-1) == 0 then
					require("persistence").load({ last = true })
				end
			end,
			-- for lazy loaded plugins!
			nested = true,
		})
	end,
}
