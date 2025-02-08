local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>tf", function()
    vim.fn.system("git rev-parse --is-inside-work-tree") -- maybe cache this?
    local in_git = vim.v.shell_error == 0

    if in_git then
        builtin.git_files()
    else
        builtin.find_files({ hidden = true })
    end
end)
vim.keymap.set("n", "<leader>ta", builtin.find_files)
vim.keymap.set("n", "<leader>tg", builtin.live_grep)
vim.keymap.set("n", "<leader>te", builtin.diagnostics)
