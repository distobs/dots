function Snip(fm)
	if a:fm == "md"
		set ft=pandoc
	endif

	packadd ultisnips

	let g:UltiSnipsExpandTrigger="<tab>"
	let g:UltiSnipsJumpForwardTrigger="<c-n>"
	let g:UltiSnipsJumpBackwardTrigger="<c-p>"
endfunction

autocmd BufEnter *.md :call Snip("md")
autocmd BufEnter *.tex :call Snip("tex")
