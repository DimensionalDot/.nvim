vim.cmd('set termguicolors')

require('rose-pine').setup({
    -- groups = {
    --     background = "none",
    -- }
})

vim.cmd.colorscheme("rose-pine-moon")
-- vim.cmd.colorscheme("gruvbox")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
-- still highlights line number if cursorline = true
vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })

-- print("after.plugin")
