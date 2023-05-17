respository for terminal configuration files
	specifically for vimrc and tmux.conf


vimrc instructions
============================================================
-the vimrc file can be configured as you would the regular .vimrc file
-there must be a .vimrc file in the home directory with this line
	source path/to/terminal_config_files/vimrc
-pathogen is used to install packages
	- vim pathogen and it's documentation is found here: https://github.com/tpope/vim-pathogen
	- packages to install:
		- FZF : https://github.com/junegunn/fzf.git
		- vim-visincr : https://github.com/jikkujose/vim-visincr.git
	- to install packages just clone those repos into .vim/bundle/ and they'll work



tmux.conf instructions
============================================================
-the tmux.conf file can be configured as you would the regular .tmux.conf file
-there must be a .tmux.conffile in the home directory with this line
	source path/to/terminal_config_files/tmux.conf
-tmux copy paste keyboard shortcuts
	make a global custom shortcut
		settings/shortcuts/custom_shortcuts
		to make tmuxcopy
			click edit/new/global
			trigger Ctrl+Alt+Y
			Action ctrl+a:[:v:y
		to make tmuxpaste
			click edit/new/global
			trigger Ctrl+Alt+J
			Action ctrl+a:Shift+p
