#Plugins
via Vundle | Vimplug
-----------|---------
tpope/vim-fugitive
	/vim-surround
vim-airline/vim-airline				// vim let g:airline_powerline_fonts = 1
				/ +themes
godlygook/tabular					//[Needed for Markdown - must come before]
plasticboy/vim-markdown
w0rp/ale
Plug[in] ryanoasis/vim-devicons		//[Always load last - needs Nerd font] - inside Vim set encoding=UTF-8
mhinz/vim-signify
[NerdTree, Vim-Surround, powerline, FzF, CtrlP, Denite, unite, vimfiller, flagship, vim-startify, vim-workspace, lightline.vim]


Use | Plugin : Alternative & Used together
----|--------:------------
Distraction Free | goyo & limeline
VC changes | signify : Git-Gutter
Man/Docs | viewdoc :
statusline |  | powerline | airline
FileExplorer | NerdTree

'look at'
	vim-unite-giti
	:w !sudo tee% 	{command! W :execute ':silent w !sudo tee % > /dev/null' | :edit!
					autocmd BufRead * setlocal noreadonly}
	TagBar
	Syntastic | ALE
	Repeat.vim (supports Surround, Speeddating, Unimpared, Vim-Easy)
	EasyMotion - better <motion> commands
	Vim-MultipleCursors - MultiCursor      uses C-n
	Tmux-navigator
	
			powerline-status https://github.com/powerline/powerline
			https://powerline.readthedocs.io/en/latest/usage/other.html#vim-statusline
			> $pip install powerline-status
			```vimrc
			python3 from powerline.vim import setup as powerline_setup
			python3 powerline_setup()
			python3 del powerline_setup

			set rtp+={repository_root}/powerline/bindings/vim
			```

""notes"" : actions are triggerd by lowercase, Uppercase, _ALT_+letter and _CTRL_+leter
if it is lowercase, just press the letter
if it is uppercase, use _SHIFT_, _CapsLock_ will also work.
	CTRL+letter, may be depicted as ^letter

#Modes
[N] Normal - _<ESC>_ to access. _<Ctrl-O>_ to access for one command.
			- _n_
			
[I] Insert 
	   - _i_ to access at cursor Position.
	   - _A_ to access at End of Line.
	   - _a_ to access at end of Word.
	   - _O_ New line, above (newline).
	   - _o_ to access at Next line (newline).

[V] Visual
		- _v_ VISUAL.
		- _V_ V-line.
		- _<Ctrl-v>_ V-Block.

#inputs
"note, ":" signifies a command. commands are usually inputted in the [Normal] Mode.
##Exit
	Force Quit/Exit - __:q!__
	Quit - __:q__ (gives warnings)
	Save - __:w__
		Save as Sudo - __:w !sudo tee%__
	Write and Quit - __:wq__ or __:x__ or _ZZ_
##Navigation
	_h,j,k,l_ - Navigation, Left, UP, Down, Right.
	_w_ : _moves_ to _beginning_ of the _next word_.
	_e_ : _moves_ to the _last letter_ of current/next _word_
	_ng_ or _:n_ : _moves_ cursor to specified (n) line.

	_<Ctrl-F>_
	_<Ctrl-B>_
	C_E

##Commands
	:tee - T shaped Pipe, writes to file (buffer) and to STDOUT.
	:Tabuliza @see tabulize

#Record a Macro
<N> q<buffer>
	//starts recording
	//to end press __q__ again in [_Normal_] Mode.
	//if you want to end in [_Insert_]  mode, press,
		<Ctrl-O> to execute the next command in <N>
			,then press __q__
##Macro values
	<CR> - New Line (windows ? CR LF - unix)
	<C-R> - input at cursor?
	<esc> - Escape (to [normal] mode
	<BS> - Back Space

#Windows
##Split View
vim -v
__:split__ - horizontally ---
__:vsplit__ - vertically |

##Tabs
__:tabe__ - tab edit : open file to edit
__:tabo__ - tab open : open file

__:tabn__ - Next Tab or _gt_
__:tabp__ - Previous Tab _Gt_

#Extra
##Learning
_K_ - looks up man page for word cursor is over.
###Ex mode
	Ex-Mode is backwords support for Ex commands
	:Visual	Visaual opens a file
	:Open	Open (n) opens a file at line n
	:Edit is implemented the same as visual.
:edit/:e supports tab completion
:open/:o does not. - open uses pattern matching.



/// look into
let g:currentmode={
            \ 'n'      : 'NORMAL  ',
            \ 'v'      : 'VISUAL  ',
            \ 'V'      : 'V·Line  ',
            \ "<C-v>" : 'V·Block ',
            \ 'i'      : 'INSERT  ',
            \ 'R'      : 'REPLACE ',
            \ 'c'      : 'COMMAND ',
            \ 't'      : 'TERM    '
            \}

set statusline=
            \%{toupper(g:currentmode[mode()])}
            \\ %{&filetype!=#''?&filetype:'none'}
            \\ \ %{&fileformat==#'unix'?'U':&fileformat==#'dos'?'D':'N'}
            \:%{&readonly\|\|!&modifiable?&modified?'%*':'%%':&modified?'**':'--'}
            \\ \ %{expand('%:~:.')!=#''?expand('%:~:.'):'[No\ Name]'}
            \%=\ %3p%%\ \ %l:\ %3c


#Vim Free keys

