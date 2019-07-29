"Functions
"show changes made in current file
command Diff execute 'w !git diff --no-index % -'

" modify selected text using combining diacritics
command! -range -nargs=0 Overline        call s:CombineSelection(<line1>, <line2>, '0305')
command! -range -nargs=0 Underline       call s:CombineSelection(<line1>, <line2>, '0332')
command! -range -nargs=0 DoubleUnderline call s:CombineSelection(<line1>, <line2>, '0333')
command! -range -nargs=0 Strikethrough   call s:CombineSelection(<line1>, <line2>, '0336')

function! s:CombineSelection(line1, line2, cp)
	execute 'let char = "\u'.a:cp.'"'
	execute a:line1.','.a:line2.'s/\%V[^[:cntrl:]]/&'.char.'/ge'
endfunction

"probably doesn't work
if &term =~ "xterm\\|rxvt"
 " use an orange cursor in insert mode
 let &t_SI = "\<Esc>]12;orange\x7"
 " use a red cursor otherwise
 let &t_EI = "\<Esc>]12;red\x7"
 silent !echo -ne "\033]12;red\007"
 " reset cursor when vim exits
 autocmd VimLeave * silent !echo -ne "\033]112\007"
 " use \003]12;gray\007 for gnome-terminal
endif

"see also
"'./mappings.vim'
"'./plugins.vim'
"'~/.vimrc'
