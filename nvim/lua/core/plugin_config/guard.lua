local ft = require('guard.filetype')
ft('cpp'):fmt('clang-format')
ft('rust'):fmt('rustfmt')

require('guard').setup({
  fmt_on_save = true,
  lsp_as_default_formatter = false,
})
