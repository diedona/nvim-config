local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- Directory navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", opts)
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- panel navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- navigate pane left
keymap.set("n", "<C-l>", "<C-w>l", opts) -- navigate pane right
keymap.set("n", "<C-h>", "<C-w>h", opts) -- navigate pane down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- navigate pane up 

-- identing
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- comments
vim.api.nvim_set_keymap("n", "<C-k>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-k>", "gcc", { noremap = false })
