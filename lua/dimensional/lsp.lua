local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

on_attach = function()
    vim.keymap.set("n", "<leader>le", vim.diagnostic.open_float, {buffer=0})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set("n", "<leader>lt", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {buffer=0})

    vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, {buffer=0})
    vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, {buffer=0})
end

require'lspconfig'.pylsp.setup {
    capabilities = capabilities,
    on_attach = on_attach
}
require'lspconfig'.tsserver.setup {
    capabilities = capabilities,
    on_attach = on_attach
}
require'lspconfig'.clangd.setup {
    capabilities = capabilities,
    on_attach = on_attach
}
require'lspconfig'.cssls.setup {
    capabilities = capabilities,
    on_attach = on_attach
}
require'lspconfig'.ocamllsp.setup {
    capabilities = capabilities,
    on_attach = on_attach
}
require'lspconfig'.jdtls.setup{
    capabilities = capabilities,
    on_attach = on_attach
}
require'lspconfig'.emmet_ls.setup{
    capabilities = capabilities,
    on_attach = on_attach
}
require'lspconfig'.solargraph.setup{
    capabilities = capabilities,
    on_attach = on_attach,
}
require'lspconfig'.rust_analyzer.setup{
    capabilities = capabilities,
    on_attach = on_attach,
    cmd = {"rustup", "run", "stable", "rust-analyzer"};
} 
require'lspconfig'.hls.setup{
    capabilities = capabilities,
    on_attach = on_attach,
};
