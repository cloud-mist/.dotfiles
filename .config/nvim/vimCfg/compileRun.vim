"  ---------------------
"  =   Compile & Run   =
"  ---------------------
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
		exec "w"
		if &filetype == 'c'
				set splitbelow
				exec "!g++ % -o %<"
				:sp
				:res -5
				:term ./%<
		elseif &filetype == 'cpp'
				set splitbelow
				exec "!g++ -std=c++11 % -Wall -o %<"
				:sp
				:res -5
				:term ./%<
		elseif &filetype == 'java'
				exec "!javac %"
				exec "!time java %<"
		elseif &filetype == 'sh'
				:!time bash %
		elseif &filetype == 'python'
				set splitbelow
				:sp
				:res -5
				:term python3 %
		elseif &filetype == 'html'
				silent! exec "!".g:mkdp_browser." % &"
		elseif &filetype == 'markdown'
				exec "MarkdownPreview"
		elseif &filetype == 'rust'
			"set splitbelow
			"exec "!rustc %"
			":sp
			":res -5
			":term ./%<
			set splitbelow		
			:sp
			:res -5
			:term cargo run 
		elseif &filetype == 'tex'
				silent! exec "VimtexStop"
				silent! exec "VimtexCompile"
		elseif &filetype == 'go'
				set splitbelow
				:sp
				:term go run .
		endif
endfunc

