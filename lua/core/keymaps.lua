local opts = { noremap = true, silent = true }

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- keeps us in visualmode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- not sure if i want to delete then discrd...
-- vim.keymap.set({ "n", "v" }, "d", '"_d', { noremap = true, silent = true, desc = "Delete (discard)" })
-- vim.keymap.set({ "n", "v" }, "x", '"_x', { noremap = true, silent = true, desc = "Delete (discard)" })

vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a")

vim.keymap.set("n", "<leader>bc", ":bd | bn<CR>", { desc = "[B]uffer [C]lose and go to next" })
vim.keymap.set("n", "<Tab>", ":bn<CR>", { desc = "Move to next tab" })
vim.keymap.set("n", "<S-Tab>", ":bp<CR>", { desc = "Move to previous tab" })
