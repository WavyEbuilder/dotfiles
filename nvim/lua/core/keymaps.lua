local keymap = vim.api.nvim_set_keymap
local n_keymap = function (lhs, rhs)
  vim.api.nvim_set_keymap ('n', lhs, rhs, { noremap = true, silent = true })
end
keymap("n", "<leader>f", ":NvimTreeToggle<CR>", {silent = true} )
keymap("n", "<leader>t", ":ToggleTerm<CR>", {silent = true} )
keymap('n', '<leader>y', '"+y', {silent = true})
keymap('n', '<leader>d', '"+d', {silent = true})
keymap('n', '<leader>pp', '"+p', {silent = true})
keymap('n', '<leader>l', ":!zathura <C -r >= expand('%:r')<cr>.pdf &<cr>", {silent = true})
keymap('n', '<leader><Left>', ":BufferLineCyclePrev<CR>", {silent = true})
keymap('n', '<leader><Right>', ":BufferLineCycleNext<CR>", {silent = true})
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300)
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
n_keymap ('<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
n_keymap ('<leader>cf', '<cmd>lua vim.lsp.buf.code_action({ filter = function (code_action) return string.find (action.title, "spelling") end, apply = true, })<CR>')
