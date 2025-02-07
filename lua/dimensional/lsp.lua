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
lspconfig.lua_ls.setup {}
lspconfig.gopls.setup {}
lspconfig.svelte.setup {}
