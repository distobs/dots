---------- SPECIAL OPTIONS -------
vim.cmd([[
augroup vimStartup
	autocmd!
	autocmd BufReadPost *
		\ let line = line("'\"")
		\ | if line >= 1 && line <= line("$") && &filetype !~# 'commit'
		\      && index(['xxd', 'gitrebase'], &filetype) == -1
		\ |   execute "normal! g`\""
		\ | endif
augroup END
]]) -- remember last line when opening

---------- GENERAL OPTIONS -------
vim.cmd([[set matchtime=0 ic nu]])

---------- UNDO OPTIONS -------
vim.cmd([[
let target_path = expand('~/.config/nvim/persistent-undo/')
if !isdirectory(target_path)
    call system('mkdir -p ' . target_path)
endif
let &undodir = target_path
set undofile
set nohlsearch
]])
