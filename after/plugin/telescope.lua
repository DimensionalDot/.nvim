local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>tf", function()
    local status, err = pcall(builtin.git_files)
    -- fallback to files in current directory if not in git project
    -- currently if git repo has no commits file finder will be empty...
    if not status and err:find("not a git directory", 1, true) then
        builtin.find_files()
    end
end)
vim.keymap.set("n", "<leader>tg", builtin.live_grep)
