return {
	"kevinhwang91/nvim-ufo",
	dependencies = {
		"kevinhwang91/promise-async",
	},
	config = function()
		vim.o.foldcolumn = "1"
		vim.o.foldlevel = 99
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true

		require("ufo").setup({
			provider_selector = function(bufnr, filetype, buftype)
				-- This tells UFO to ask the LSP server for folds first.
				-- If the LSP server doesn't provide them, it falls back to indentation.
				return { "lsp", "indent" }
			end,
		})
	end,
}
