-- [[ Basic Keymaps ]]
-- See ':help vim.keymap.set()'

-- Set <leader>pv to open Netrw
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open Netrw' })

-- Clear highlights on search when pressing <Esc> in normal mode
-- See ':help hlsearch'
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Keep cursor in place on pressing 'J'
vim.keymap.set('n', 'J', "mzJ'z")

-- Navigate up and down by a half page with <CTRL-u> and <CTRL-d>
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')

-- Set split navigation keymaps
-- Use CTRL+<hjkl> to swith between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode with <Esc><Esc>
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- [[ Advanced Keymaps ]]

-- Move highlighted text with cursor
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Highlight when yanking text
-- See ':help vim.highlight.on_yank()'
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking text',
	group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
