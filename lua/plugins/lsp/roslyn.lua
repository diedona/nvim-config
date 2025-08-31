return {
	"seblyng/roslyn.nvim",
	ft = { "cs", "csproj" },
	opts = {
		-- Optional settings. Refer to the official repo for full documentation.
		-- This is useful for large solutions to prevent performance issues.
		config = {
			settings = {
				["csharp|background_analysis"] = {
					dotnet_analyzer_diagnostics_scope = "openFiles",
					dotnet_compiler_diagnostics_scope = "fullSolution",
				},
				-- Explicitly tell Roslyn to consider editorconfig
				["csharp|enable_editor_config"] = true,

				-- This setting is usually sufficient to enable analyzers
				["csharp|enable_analyzers"] = true,
			},
		},
	},
}
