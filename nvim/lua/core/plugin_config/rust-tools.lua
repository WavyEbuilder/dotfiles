local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
    on_attach = function(client, bufnr)
      client.server_capabilities.semanticTokensProvider = nil
      client.server_capabilities.signatureHelpProvider = false
      on_attach(client,bufnr)
    end,
  },
})
