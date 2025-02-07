local lspconfig = require("lspconfig")

local lspconfig_defaults = lspconfig.util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
    "force",
    lspconfig_defaults.capabilities,
    require("cmp_nvim_lsp").default_capabilities()
)

vim.api.nvim_create_autocmd("LspAttach", {
    desc = "LSP Actions",
    group = vim.api.nvim_create_augroup("LSPActions", {}),
    callback = function(event)
        local opts = { buffer = event.buf }

        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>le", vim.diagnostic.open_float, opts)
        vim.keymap.set("n", "<leader>ln", vim.diagnostic.goto_next, opts)
        vim.keymap.set("n", "<leader>lp", vim.diagnostic.goto_prev, opts)
        vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "<leader>lt", vim.lsp.buf.type_definition, opts)
        vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, opts)

        vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, opts)
    end,
})

lspconfig.pylsp.setup {}
lspconfig.ts_ls.setup {}
lspconfig.clangd.setup {}
lspconfig.cssls.setup {}
lspconfig.ocamllsp.setup {}
lspconfig.jdtls.setup {}
lspconfig.emmet_language_server.setup {}
lspconfig.solargraph.setup {}
lspconfig.rust_analyzer.setup {}
lspconfig.hls.setup {}
lspconfig.sourcekit.setup {
    filetypes = { "swift" },
}
lspconfig.html.setup {}
lspconfig.lua_ls.setup {
    on_init = function(client)
        if client.workspace_folders then
            local path = client.workspace_folders[1].name
            if path ~= vim.fn.stdpath('config')
                and (vim.loop.fs_stat(path .. '/.luarc.json')
                    or vim.loop.fs_stat(path .. '/.luarc.jsonc'))
            then
                return
            end
        end

        client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
            runtime = {
                -- Tell the language server which version of Lua you're using
                -- (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT'
            },
            -- Make the server aware of Neovim runtime files
            workspace = {
                checkThirdParty = false,
                library = {
                    vim.env.VIMRUNTIME
                }
            }
        })
    end,
    settings = {
        Lua = {}
    }
}
lspconfig.gopls.setup {}
lspconfig.svelte.setup {}
