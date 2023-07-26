local ls = require("luasnip")

ls.config.setup {
    -- remembers last used snippet so you can jump back into it
    -- disabling for now until muscle memory adjusts to c-j/k for nvim-cmp menu
    history = false,

    updateevents="TextChanged,TextChangedI"
}

-- unsetting these so they can be used for snippet jumping below
vim.keymap.set({'n', 'i'}, '<C-n>', '<Nop>');
vim.keymap.set({'n', 'i'}, '<C-p>', '<Nop>');

vim.keymap.set({"i", "s"}, "<C-n>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })
-- TODO: use keybinds that don't over write things (assuming these do?)
vim.keymap.set({"i", "s"}, "<C-p>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })

vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<CR>")
