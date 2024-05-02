local opt = vim.opt

-- Tab / Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- Behavior
opt.mouse = "a"
opt.clipboard:append("unnamedplus")

opt.number = true
opt.relativenumber = true
opt.timeoutlen = 1500
