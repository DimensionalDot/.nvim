local config = vim.fn.stdpath("config")

vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.swapfile = false

vim.opt.relativenumber  = true
vim.opt.nu = true
vim.opt.scrolloff = 8

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.shiftwidth = 4

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.wrap = false
vim.opt.colorcolumn = "80" 
vim.opt.cursorline = true

vim.opt.signcolumn = "yes"

vim.g.netrw_liststyle = 3

vim.filetype.add({ pattern = { ['.*/nand2tetris/.*/*.hdl'] = 'nandhdl' } })
vim.filetype.add({ pattern = { ['.*/nand2tetris/.*/*.asm'] = 'nandasm' } })
vim.filetype.add({ pattern = { ['.*/nand2tetris/.*/*.vm'] = 'nandvm' } })
vim.filetype.add({ pattern = { ['.*/nand2tetris/.*/*.jack'] = 'nandjack' } })

-- Why don't these work??? A: cause they need to be run last
-- vim.opt.formatoptions:remove("c")
-- vim.opt.formatoptions:remove("o")
-- vim.opt.formatoptions = "jql"
