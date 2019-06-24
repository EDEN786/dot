.rc refers to the user config for your shell, i.e bashrc zshrc
#::Installs::#######################
sudo apt install zsh vim git neofetch
	//$chsh -s $(which zsh)
	git-flow fonts-powerline
	
##::Fonts::################
	NERD
	FONT-AWESOME
	POWERLINE-FONTS
	DEVICONS+GLYPHS
###::Programming Tools::#### 
	build-essential {C/++} openjdk-8-jdk
	//{ghc {Haskel} sbcl{lisp} openjdk-8-jdk openjdk-11-jdk} //jdk includes jre
	
> $htop 	-process manager
> $pydf 	-disk usage
> $mc 		-file manager
> $nnn 	-file analyzer
> $aria2 	-(wget)-http/https/ftp/sftp/Tor download tool

https://www.reddit.com/r/vim/comments/9xpb18/file_preview_with_fzf_rg_bat_and_devicons/
#GITHUB PACKAGES
	fzf -Fuzzy Finder ( \*\*<TAB> )
		git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
		~/.fzf/install
		
	**bat** -Cat(1) with wings
		https://github.com/sharkdp/bat // sudo dpkg -i *.deb
	Vundle -VimPluginManger
		https://github.com/VundleVim/Vundle.vim
	**vim-plug** -Vim plugin manager
		https://github.com/junegunn/vim-plug
//
//https://github.com/bhilburn/powerlevel9k/wiki/Install-Instructions#option-2-install-for-oh-my-zsh
//git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
//< also get awesome-powerline fonts for best use>
@see PwrLv10K

@see Prompt-Pure
	autoload -U promptinit; promptinit; prompt pure

#::ZSHRC::####################################################################

##Plugins::
https://github.com/unixorn/awesome-zsh-plugins  {alias-tips} {zsh-autosuggestions}

Plugin Managers {Antigen, Zplug ??}

https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins
##::Oh-My-Zsh plugins
	Git
	Git-flow-avh
	web-search
	sudo
	command-not-found
	common-aliases

https://github.com/petervanderdoes/gitflow-avh
###::Git Flow
	$git flow
			feature [base default delevop]	 alias g-f
			release [base default develop]	 alias g-r
			hotfix	[base default production]  alias g-h
			release [base default develop]	 alias g-r
					
				start <name> [<base>]    {branch} <type>/<name>  i.e feature/<name>
				finish <name>			 {merge - dev}
				delete <name>
					
				feature only
					publish <name>  {push}
					track <name>    {pull}
				
			support	[base default production]  alias g-s
					start <release> [<base>]
	
##::PiP-Install::##########################################################
sudo apt install python3-dev python3-pip python3-setuptools python-pygments
						//python-dev python-pip
> $sudo pip3 install the fuck
> $eval $(thefuck --alias)
		
> $apt get software-properties-common    //adds PPA tools
> $add-apt-repository ppa:neovim-ppa/stable
> $apt install neovim
###########################################################################
to make commands/scripts accessable everywhere
export PATH=$PATH:</path/to/file> in .rc
or 
add it to /usr/local/bin
	chmod 764
	

##::ALRC::##################################
"Loading Aliases from another File

if [ -d <dir> ]; then		#IF [DIR Exists]  ~/CONFIG/
	if [ -f <path> ]; then	#IF [File Exists] ~/CONFIG/.shared
		. <path> 			#Load File
	fi
fi
```
cd ~
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias bashrc="vim ~/.bashrc"

alias alrc="vim ~/.SHARED/aliases"
alias alconfig='alrc'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias l1='ls -1'

cs()
{
	cd $@
	ls
}
alias cds='cs'
```











##::VIM::##################################
'''Vimrc
NORMAL MODE <N> : <ESC>
	VISUAL MODE <V> : v :visual
					  V :-line 
					  Ctrl-v :-block
	INSERT MODE <I> : i
h :LEFT
j :DOWN
k :UP
l :RIGHT
	
Windows
:split
:vsplit
	navigate with Ctrl-W <Arrows_hjkl>
	
"macros
start recording with <N>q. then buffer
end recording with <N>q.

Shortcuts
<INSERT>
Ctrl-O :: execute one <N>Mode command then return to <I>Mode
	
set nu //linenumbers
set hlsearch //highlighsearch
set lazyredraw //only refresh at the end of a macro
"mappings
nnoremap Q @@ "disable ^Q key <Ex>Mode

Jump
gg - jump to line 0
G - jump to last line
C-] - jump to Tag
C-T - return from Tag jump
C-O - return from jump

Speical Characters
	C-K then two-letter combination
		C-K a:
	or set dg [diagraph]
		a<BS>:
	By Value
		C-V then
			DEC: nnn 			(<=255)
			OCT: Onnn or onnn 	(<=377)
			HEX: Xnn or xnn		(<=FF)
		BMP HEX: unnnn			(<=FFFF)
		Uni HEX: Unnnnnnnnn		(<=7FFFFFFFF)
	pring Value of character with
		:as[cii] or ga
		or g8