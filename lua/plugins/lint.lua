return {
	-- Instalação do nvim-lint
	{
		"mfussenegger/nvim-lint",
		event = { "BufWritePost", "BufEnter" }, -- Lazy-load ao guardar ou entrar num buffer
		config = function()
			require("lint").linters_by_ft = {
				-- Configuração dos linters por tipo de ficheiro
				dockerfile = { "hadolint" },
				lua = { "selene" },
				javascript = { "eslint_d" },
			}

			-- Auto-executar o linter ao guardar um ficheiro
			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},
	-- Instalação do mason-nvim-lint para gerir as ferramentas
	{ "rshkarin/mason-nvim-lint" },
}
