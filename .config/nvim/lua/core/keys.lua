
vim.keymap.set('i', 'df', '<Esc>')

vim.keymap.set('n', '<Leader>w', ':w<CR>')
vim.keymap.set('n', '<Leader>q', ':q<CR>')
vim.keymap.set('n', '<Leader>Q', ':q!<CR>')

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- vim.keymap.set('n', '<Leader>n', ':tabnew<CR>')
-- vim.keymap.set('n', '<Leader>N', ':bd<CR>')
-- vim.keymap.set('n', '<Leader>]', ':bnext<CR>')
-- vim.keymap.set('n', '<Leader>[', ':bprevious<CR>')

vim.keymap.set('n', '<Leader>v', ':split<CR>')
vim.keymap.set('n', '<Leader>h', ':vsplit<CR>')

vim.keymap.set('n', '<Leader>H', ':vertical resize +4<CR>')
vim.keymap.set('n', '<Leader>J', ':horizontal resize +2<CR>')
vim.keymap.set('n', '<Leader>K', ':horizontal resize -2<CR>')
vim.keymap.set('n', '<Leader>L', ':vertical resize -4<CR>')

-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>')

-- vim.keymap.set('n', '<Tab>', '>>')
-- vim.keymap.set('n', '<S-Tab>', '<<')
vim.keymap.set('v', '<Tab>', '>gv')
vim.keymap.set('v', '<S-Tab>', '<gv')

