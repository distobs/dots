local v = vim.keymap.set

---------- LEADER ----------
vim.cmd([[let g:mapleader=","]])

---------- LSP KEYMAPS ----------
vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local opts = { buffer = ev.buf }
		v('n', '<leader>gd', vim.lsp.buf.definition, opts)
		v('n', '<leader>gD', vim.lsp.buf.declaration, opts)
		v('n', '<leader>gi', vim.lsp.buf.implementation, opts)
		v('n', '<leader>gr', vim.lsp.buf.references, opts)
		v('n', '<leader>gtd', vim.lsp.buf.type_definition, opts)
		v('n', '<leader>rn', vim.lsp.buf.rename, opts)
		v('n', '<C-k>', vim.lsp.buf.signature_help, opts)
		v('n', 'K', vim.lsp.buf.hover, opts)
	end,
})

---------- SHORTCUT KEYMAPS ----------
v('n', '<leader>w', '<C-w>') -- window shortcut
v('n', '<leader>cr', '<C-r>') -- redo shortcut

---------- MOVEMENT KEYMAPS ---------
v('n', '<leader>cd', '<C-d>') -- go up
v('n', '<leader>cu', '<C-u>') -- go down

---------- UTILITY KEYMAPS ---------
v('n', 'ff', 'mfgggqG`f') -- format file

---------- BUFFER KEYMAPS ---------
v('n', '<leader><leader>', ':ls<cr>:b<space>') -- open buffer list
v('n', '<leader>bp', ':bp<cr>') -- previous buffer
v('n', '<leader>bn', ':bn<cr>') -- next buffer
