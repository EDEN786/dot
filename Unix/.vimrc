" Comments started with "
set number "[nu]
set hlsearch "[hlsearch]
"lifepillar/vim-solarized8 colorscheme
	set background=dark
	colorscheme solarized8
	"let g:solarized_visibility = normal "{low|*normal|high}
	"let g:solarized_diffmode = normal "{low|*normal|high}
	let g:solarized_termtrans = 1 "{*0|1}
		"Non Original options"
	"let g:solarized_statusline = normal "{low|*normal|flat}
	let g:solarized_term_italics = 1 "{0|*1}
	"let g:solarized_old_cursor_style = 0 "{*0|1}
	let g:solarized_extra_hi_groups = 1 "{*0|1}
	"Troubleshoot @see{:h xterm-true-color}
		"let &t_8f = [38;2;%lu;%lu;%lum
		"let &t_8b = [48;2;%lu;%lu;%lum


set rtp+=~/.fzfz
"filetype shit
command! -nargs=+ Cppman silent! call system("tmux split-window cppman " . expand(<q-args>))
autocmd FileType cpp nnoremap <silent><buffer> K <Esc>:Cppman <cword><CR>

autocmd FileType vim setlocal keywordprg=:help

source ~/.vim/startup/mappings.vim
source ~/.vim/startup/plugins.vim
source ~/.vim/startup/functions.vim
