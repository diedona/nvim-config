return {
	"rachartier/tiny-inline-diagnostic.nvim",
	config = function()
		require("tiny-inline-diagnostic").setup({
			-- Configuration options here
		})

		-- Disable default virtual text to avoid overlap
		vim.diagnostic.config({
			virtual_text = false,
		})
	end,
}
