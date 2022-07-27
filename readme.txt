respository for terminal configuration files
	specifically for vimrc and tmux.conf


vimrc instructions
============================================================
-the vimrc file can be configured as you would the regular .vimrc file
-there must be a .vimrc file in the home directory with this line
	source path/to/terminal_config_files/vimrc



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
