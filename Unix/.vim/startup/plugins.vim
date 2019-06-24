" PLUGINS - install with :PlugInstall
"Auto install Plug.vim
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-plug'	" :h plug-options
"Plug 'junegunn/seoul256.vim' 	"colorscheme
Plug 'junegunn/goyo.vim'	"distraction-free-mode
Plug 'junegunn/limelight.vim' 	"spotlight :Limelight [0.0 ~ 1.0 | !]
"Plug 'junngunn/vim-peekaboo'	"show register contents
"Plug 'junegunn/vim-easy-align	" {vip ga =}{ga ip=}  '' allgns around =
"    =    | 2=  | *=  | **=             | <Enter> .
" 1st Occ | 2nd | All | l/r alternating | alternate l/r
"
Plug 'flazz/vim-colorschemes'
"
Plug 'mhinz/vim-signify'	"VersionControl-Changes
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'w0rp/ale'
Plug 'nathanaelkane/vim-indent-guides' "Shows indent levels
" Tmux-Complete     C-x then C-u
Plug 'prabirshrestha/async.vim'
"Plug 'prabirshrestha/asyncomplete.vim'
Plug 'wellle/tmux-complete.vim'
Plug 'christoomey/vim-tmux-navigator'
"
" View documentation
Plug 'powerman/vim-plugin-viewdoc'
"Plug 'keith/investiage.vim' 	"Better S-k helptext
"Diff vim swp
Plug 'chrisbra/recover.vim'
call plug#end()

"Plugin specific Macros/Config"
let g:limelight_conceal_ctermfg = 'gray'
nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
"
