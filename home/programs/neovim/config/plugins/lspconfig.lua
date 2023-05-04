local lspconfig = require("lspconfig")

local servers = { "rust_analyzer", "rnix", "tsserver", "ccls" }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities
  })
end
