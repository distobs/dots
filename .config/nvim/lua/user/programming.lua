---------- WHITESPACE HIGHLIGHTING ----------
vim.cmd([[
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
]])

vim.cmd([[inoremap <buffer> > ></<C-x><C-o><C-y><C-o>%<CR><C-o>O]])

---------- STYLE ----------
vim.cmd([[set ts=8 sw=8 sts=8 cc=80 tw=79 noexpandtab]])

---------- C STYLE ----------
vim.cmd([[set cino=t0,l1,:0]])

---------- MARKDOWN STYLE ----------
vim.cmd([[autocmd BufEnter *.md set ft=pandoc]])

---------- WEB STYLE ----------
vim.cmd([[autocmd BufEnter *.html,*.css,*.js set ts=4 sts=4 sw=4]])
