local lspconfig = require("lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.rnix.setup{}
lspconfig.tsserver.setup{}
lspconfig.ccls.setup{}
lspconfig.cmake.setup{}
lspconfig.svelte.setup{}
lspconfig.html.setup {
  capabilities = capabilities,
}
lspconfig.cssls.setup {
  capabilities = capabilities,
}
