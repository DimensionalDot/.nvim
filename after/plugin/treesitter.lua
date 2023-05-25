require'nvim-treesitter.configs'.setup {
    auto_install = true,
    highlight = {
            enable = true,
            disable = {"help", "latex"},
            additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true
    }
}
require'treesitter-context'.setup {
    enable = true,
    max_lines = 0,
    min_window_height = 0,
    seperator = "-"
}

-- Below doesn't work for some reason?
-- vim.cmd("highlight link TreesitterContext CursorLine")
