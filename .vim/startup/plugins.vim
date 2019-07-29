" PLUGINS - install with :PlugInstall
"Auto install Plug.vim
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"########################### BEGIN #######################################
call plug#begin('~/.vim/plugged') "Specify a directory for Plugins
Plug 'junegunn/vim-plug'	" :h plug-options
Plug 'junegunn/goyo.vim'	"distraction-free-mode
Plug 'junegunn/limelight.vim' 	"spotlight :Limelight [0.0 ~ 1.0 | !]
let g:limelight_conceal_ctermfg = 'gray'
nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

"_________________Simple Features_‥_Fixes_______________ no side-effects
Plug 'scrooloose/nerdtree'	"File Explorer
Plug 'junegunn/vim-peekaboo'	"show  register contents
Plug 'nathanaelkane/vim-indent-guides' "Shows indent levels
Plug 'chrisbra/recover.vim' 	"Recover swp/ diffmode
Plug 'wincent/Terminus'		"Focus Reporting + Change cursor + Mouse + Paste

"___________________Advanved Features__________________ Adds Commands
Plug 'bling/vim-airline'	"statusline
Plug 'vim-airline/vim-airline-themes'	"statusline-themes
Plug 'mkitt/tabline.vim'	"Numbered Tabs
let g:tablineclosebuton=1
"___________________GIT/Version-Control________________
Plug 'mhinz/vim-signify'	"VersionControl-Changes
Plug 'tpope/vim-fugitive'	"S-Git Wrapper :G<command> status|diff|browse
"------
Plug 'powerman/vim-plugin-viewdoc' "ViewDoc replace :help
Plug 'tpope/vim-surround'	"ys[s] ds cs commands
Plug 'junegunn/vim-easy-align'	"{vip ga =}{ga ip=}  '' allgns around =
"    =    | 2=  | *=  | **=             | <Enter> .
" 1st Occ | 2nd | All | l/r alternating | alternate l/r

Plug 'scrooloose/syntastic'	"S-Syntax checker
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"______________Alternates____________________________
"Plug 'w0rp/ale'		"Sytax checker
"Plug 'keith/investiage.vim' 	"Better S-k helptext
"Plug 'airblade/git-gutter'	"Git symbols
"Plug 'tmux-plugins/vim-tmux-focus-events' "Focus Reporting ©Vitality
"--- Tabulize
"Look @ -https://github.com/dhruvasagar/vim-table-mode

Plug 'prabirshrestha/async.vim' "Asyn and Tmux shit
" Tmux-Complete     C-x then C-u
"Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'wellle/tmux-complete.vim'
"Plug 'christoomey/vim-tmux-navigator'

"_______COLOR_SCHEMES________
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/seoul256.vim'
"############################ END ########################################
call plug#end()
"see also
"'./functions.vim'
"'./mappings.vim'
"'~/.vimrc'
