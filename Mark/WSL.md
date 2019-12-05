WSL:
#Enable WSL
	
#Chocolatey
(Admin_PowerSh) 
	>$ Get-ExecutionPolicy; If (Restricted) run >$ Set-ExecutionPolicy Bypass -Scope Process -Force;
  >$ iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
	NeoVim
		choco install neovim     (launch with nvim)
	NppPluginManager
		notepadplusplus-nppPluginManager
				https://github.com/notepad-plus-plus/notepad-plus-plus/issues/2287#issuecomment-256638098
					
#Terminal
	https://medium.com/@ssharizal/hyper-js-oh-my-zsh-as-ubuntu-on-windows-wsl-terminal-8bf577cdbd97
	Hyper: 'Ctrl+,' for settings
	
		- change shell: to bash or wsl
		- shell: 'C:\\Windows\\System32\\bash.exe',
			plugins: [//"hyper-dracula"//"hyper-solarized-dark","hyper-material-theme"],
	Instal Powerline Fonts for win10
		https://medium.com/@slmeng/how-to-install-powerline-fonts-in-windows-b2eedecace58
	(run though zsh & oh-my-zsh install)

#GUI
	export DISPLAY=:0.0
		[host]:<display>.[screen]
		[local]:0.[0] // [optional]
	sudo apt install xfce4
	startxfce4

#Folder Color fix
	http://www.bigsoft.co.uk/blog/2008/04/11/configuring-ls_colors
	LS_COLORS=$LS_COLORS:'ow=4;93'; export LS_COLORS
		@see http://man7.org/linux/man-pages/man5/dir_colors.5.html
	TERM - terminal to apply to.
	COLOR -[(yes|all)|(no|none)|(tty)* - tty: apply to terminal not pipe.
	EIGHTBIT [yes|no]
	OPTIONS ... any valid ls command option '-a'

	|      | TYPE           |      | COLORS         | LIGHT ver
	| ---- | -------------- | ---- | ----------     | -----------
	| 00   | Default        | XX   | BLACK          | DARK_GRAY
	| 01   | Bold           | .1   | RED            |
	| 02   | Underlined     | .2   | GREEN          |
	| 03   | Flashing       | .3   | ORANGE         | YELLOW
	| 04   | Reverse BgFg   | .4   | BLUE           |
	| 05   | Concealed      | .5   | PURPLE         |
	| XX   | XXXXXX         | .6   | CYAN           | TURQOISE
	| XX   | XXXXXX         | .7   | GRAY           | WHITE
	| ---- | -------------- | ---- | ----------     | -----------
	| 3.   | Normal Color   | 4.   | BG Color
	| 9.   | Light_Color    | 10.  | BG Light_Color

	0      | no | NORMAL  | Normal (nonefilename)Text       | NORMAL
	0      | fi | FILE    | Regular File                    |
	32 [G] | di | DIR     | Directory (+d)                  |
	36 [C] | ln | LNK     | Symbolic Link (+l)              | SYMLNK   | LNK
	-      | or | ORPHAN  | Link to Non-Existant File       | -        | default LINK
	-      | mi | MISSING | Non-Existant File Linked To     | -        | default FILE
	35 [P] | ex | EXEC    | Executable (+x)                 | 35

	31 [R] | pi | FIFO    | Fifo Named-Pipe                 | PIPE
	33 [O] | so | SOCK    | Socket
	-      | do | DOOR    | Door
	> > >  | bd | BLK     | Block Device *Special* File     | 44;37 [Grey:Blue BG]
	> > >  | cd | CHR     | Character Device *Special* File | 44;37  [Grey:Blue BG]
		
	| su | SUID   | SETUID                | File with set-user-ID(+s) set
	| sg | SGID   | SETGID                | File with set-group-ID(+s) set
	| st | STICKY |                       | File with sticky attributeset(+t)
	| ow | OWR    | OTHER_WRITABLE        | OW-Directory (o+w)
	| tw | OWT    | STICKY_OTHER_WRITABLE | OWR with exec set (+t o+w)

	no: NORMAL: -	Global default :: 00
	fi:	FILE:	-	File :: 00
		Text :: 32 (source code) 	[GREEN]
		unEdit:: 01:32 (swmp) 		[b-GREEN]
		Media:: 33 (img, audio, video) [ORANGE]
	di:	DIR 	-	Directory :: 36 	[CYAN]
		tw: STICKY_OTHER_WRITABLE (+t,o+w) [u-YELLOW]
		ow: OTHER_WRITABLE (o+w)
		st: SICKY (+t)
	ln: LINK	-	Symbolic Link :: 35 [PURPLE]
		or: ORPHAN	-	Symbolic Link pointing to Missing File []
		mi:	MISSING -	Missing file pointed to BY a SymLink
	ex: EXEC	-	Executable (x):: 01:31 [b-RED]
	*.extention : file extention
	
	//blue bg pipe/socket/   Drivers
	FIFO SOCK DOOR BLK CHR == 37;44 []  syn FIFO-PIPE
	//can ignore
	LEFTCODE RIGHTCODE ENDCODE/ 
	

????????????????????

rdesktop -A
