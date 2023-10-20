local lspconfig = require('lspconfig')

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    client.server_capabilities.semanticTokensProvider = nil
    on_attach(client,bufnr)
  end,
  capabilities = capabilities,
}

lspconfig.pyright.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    client.server_capabilities.semanticTokensProvider = nil
    on_attach(client,bufnr)
  end,
  capabilities = capabilities,
}

lspconfig.texlab.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    client.server_capabilities.semanticTokensProvider = nil
    on_attach(client,bufnr)
  end,
  capabilities = capabilities,
}
