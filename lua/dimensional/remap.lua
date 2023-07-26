vim.g.mapleader = " "

-- page/cursor movement
vim.keymap.set({"n", "i", "v"}, "<left>", "<nop>")
vim.keymap.set({"n", "i", "v"}, "<right>", "<nop>")
vim.keymap.set({"n", "i", "v"}, "<up>", "<nop>")
vim.keymap.set({"n", "i", "v"}, "<down>", "<nop>")

-- vim.keymap.set("n", "<C-k>", "<C-u>zz")
-- vim.keymap.set("n", "<C-j>", "<C-d>zz")

-- line movement (and copying)
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<CR>==", {silent=true})
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<CR>==", {silent=true})
vim.keymap.set("n", "<A-J>", "<cmd>co .<CR>==", {silent=true})
vim.keymap.set("n", "<A-K>", "<cmd>co .-1<CR>==", {silent=true})

-- colons (instead of <cmd>) necessary so that we leave visual mode and the
-- marks < and > are updated
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", {silent=true})
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", {silent=true})
vim.keymap.set("v", "<A-J>", ":co '<-1<CR>gv=gv", {silent=true})
vim.keymap.set("v", "<A-K>", ":co '><CR>gv=gv", {silent=true})

-- netrw
vim.keymap.set("n", "<leader>dw", "<cmd>Ex<CR>")

-- Undo tree
vim.keymap.set("n", "<leader>ut", ":UndotreeToggle<CR>")

-- clipboard usage
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["+d]])
vim.keymap.set("n", "<leader>D", [["+D]])
-- note that in v mode these two still overwrite the unnamed reg ("") not "+
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])
vim.keymap.set({"n", "v"}, "<leader>P", [["+P]])

-- don't overwrite unnamed register ("")
vim.keymap.set({"n", "v"}, "<leader><leader>d", [["_d]])
vim.keymap.set("n", "<leader><leader>D", [["_D]])

-- vim.keymap.set("v", "<Space>", "<Nop>", { noremap = true, silent = true })
