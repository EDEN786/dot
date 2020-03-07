   see smooth scroll -- animates scrolling
https://medium.com/@huntie/10-essential-vim-plugins-for-2018-39957190b7a9
# Plugins
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


Use | Plugin | Alternative & Used together
----|--------|------------
Distraction Free | goyo & limeline |
VC changes | signify | Git-Gutter
Man/Docs | viewdoc |
statusline |  | powerline | airline
FileExplorer | NerdTree |

<pre>
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
</pre>
	
			powerline-status https://github.com/powerline/powerline
			https://powerline.readthedocs.io/en/latest/usage/other.html# im-statusline
			> $pip install powerline-status
			
```vimrc
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

set rtp+={repository_root}/powerline/bindings/vim
```
////////////////////////////////////////
				VIM
////////////////////////////////////////
""notes"" : actions are triggerd by lowercase, Uppercase, _ALT_+letter and _CTRL_+leter
if it is lowercase, just press the letter
if it is uppercase, use _SHIFT_, _CapsLock_ will also work.
	CTRL+letter, may be depicted as ^letter
difference between word and WORD.
	word is delimited by non-keyword chars
	WORD is delimited by whitespace
	if a command has a lower case, and then a uppercase next to it. The upper case version is for WORDs
		i.e _w_ _W_ , w is for word, W is for WORD.
		after a command ¦ is the opposite command
		
	

_wd_ word
_WD_ WORD
_Ln_ line
_CUR_ - cursor
_So#_ Start of 
_Eo#_ End of 

# Modes
[N] Normal - _<ESC>_ to access. _<Ctrl-O>_ to access for one command.
			- _n_
			- commands work differently in insert mode than in normal mode.
[I] Insert 
	   - (insert)_i_ edit before _CUR_. ¦ (after)_a_ after _CUR_
	   	   - _I_ edit at _SoL_. ¦ _A_ after _EoL_
	   - _o_ newline below and start edit. ¦ _O_ above

[V] Visual
		- _v_ VISUAL.
		- _V_ V-line.
		- _<Ctrl-v>_ V-Block.
	
# Inputs
"note, ":" signifies a command. commands are usually inputted in the [Normal] Mode.

## Exit
	Force Quit/Exit - __:q!__ or __ZC__
	Quit - __:q__ (gives warnings)
	Save - __:w__
		Save as Sudo - __:w !sudo tee%__
	Write and Quit - __:wq__ or __:x__ or _ZZ_
	
## Navigation
	_h,j,k,l_ - Navigation, Left, UP, Down, Right.
	(word)_w_ _W_ : _Mv_ to _So_ _Next wd_. | (back)_b_ _B_ : _So_ _Prev wd_
	(end)_e_ : _moves_ to _Eo_ current/next _word_ | (gotoEnd)_ge_ : _Eo_ _Prev wd_
	_*n*G_ or _:*n*_ : _moves_ cursor to specified (n) line.

	_0_ - _Mv_ to first _Char_ of _Ln_ | _$_ - _Mv_ to last _Char_ of _Ln_
		^ - first NonBlank | g_ - last NonBlank
	_,_ - repeat last movment
	_._ - repeat last action
	
### Marks
	_m"_ - create mark
		_'_" - jump to line of mark "
		_`_" - jump to location of mark "
	_``_ - return to place before jump
		
	(findforward)_f*?*_ _Mv_ _CUR_ to *?* Forward ¦ (findback)_F*?*_ Backwords
	(tillfoward) _t*?*_ _Mv_ _CUR_ upto *?* Forward ¦ (tillback) _T*?*_ 
	_*_ _Next_ occurence of _word_ under _CUR_ ¦ _#_ _Prev_
	
	_;_ - repeat find in same direction ¦ , repeat find in opposite direction
		
### Patterns
	/ - forward ¦ ? - back
	% - whole document
	<,> - range
	g - apply to all occurences per line (default applies to first occurence on line, ignores rest)
	
	action - subsitute   /%/old/new/g
	:g/ptrn/<ac> - apply action to lines matching pattern (d delete)
	:/v/ptrn/<ac> - apply action to lines NOT matching pattern || :/g!/ptrn/<ac> - same thing
	
## Screen Movement
	_<Ctrl-E>_ : _scroll down line_ ¦ _<Ctrl-Y>_ up
		(down)_<Ctrl-D>_ : _scroll down half _Screen_ + _Mv_ _CUR_ ¦ (up)_<Ctrl-U>_  up
			(forward)_<Ctrl-F>_ : _scroll down full _Screen_ + _Mv_ _CUR_ ¦ (back)_<Ctrl-B>_  up
	(high)	_H_ - _Mv_ to top of _Screen_
	(mediam)_M_ - _Mv_ to middle of _Screen_
	(low)	_L_ - _Mv_ to bottom of _Screen_
	
	_zz_ - Center _CUR_ to middle of _Screen_


### Jump
gg - jump to line 0
G - jump to last line
C-] - jump to Tag
C-T - return from Tag jump
C-O - return from jump


## Commands
	:tee - T shaped Pipe, writes to file (buffer) and to STDOUT.
	:Tabulize @see tabulize

# Record a Macro
<N> q<buffer>
	//starts recording
	//to end press __q__ again in [_Normal_] Mode.
	//if you want to end in [_Insert_]  mode, press,
		<Ctrl-O> to execute the next command in <N>
			,then press __q__
## Macro values	
	<CR> - New Line (windows ? CR LF - unix)
	<C-R> - input at cursor? register?
	<C-R> - word? current word?
	<ESC> - Escape (to [normal] mode)
	<BS> - Back Space

# Windows
## Split View
vim -v
__:split__ - horizontally ---
__:vsplit__ - vertically |

## Tabs
__:tabe__ - tab edit : open file to edit
__:tabo__ - tab open : open file

__:tabn__ - Next Tab or _gt_
__:tabp__ - Previous Tab _Gt_

# Extra
## Learning
_K_ - looks up man page for word cursor is over.

### Ex mode
	Ex-Mode is backwords support for Ex commands
	:Visual	Visual opens a file
	:Open	Open(n) opens a file at line n
	:Edit is implemented the same as visual.
:edit/:e supports tab completion
:open/:o does not. - open uses pattern matching.

#### look into
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


# Vim Free keys

