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

	require("plugins.neotree"),

	require("plugins.ibl"),

	require("plugins.autosession"),

	require("plugins.noice"),

	-- i will try out auto-session instead
	-- require("plugins.persistence"),

	require("plugins.catppuccin"),

	require("plugins.lazygit"),

	require("plugins.which"),

	require("plugins.mini"),

	require("plugins.smear"),

	require("plugins.snacks"),

	require("plugins.ufo"),

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

	require("plugins.zellij"),
})
