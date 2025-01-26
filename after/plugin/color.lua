vim.cmd('set termguicolors')

require('rose-pine').setup({
    -- groups = {
    --     background = "none",
    -- }
})

-- vim.cmd.colorscheme("rose-pine-moon")
vim.cmd.colorscheme("gruvbox")

-- TRANSPARENT CONFIG:

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
-- still highlights line number if cursorline = true
vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { link = "NormalFloat" })

-- setup lsp borders
local border_type = "rounded"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = border_type
  }
)

vim.diagnostic.config{
  float = { border = border_type }
}

