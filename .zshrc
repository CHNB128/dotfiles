COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"

export AUTO_NOTIFY_THRESHOLD=20

if [[ -f $HOME/.config/envrc ]]; then
	source ~/.config/envrc
fi

if [[ -f $XDG_CONFIG_HOME/antigen.zsh ]]; then
	source $XDG_CONFIG_HOME/antigen.zsh

	# Load the oh-my-zsh's library.
	antigen use oh-my-zsh

	# Bundles from the default repo (robbyrussell's oh-my-zsh).
	antigen bundle git
  antigen bundle hschne/fzf-git
	antigen bundle sudo
	#antigen bundle battery
	antigen bundle command-not-found
	antigen bundle adb
	#antigen bundle archlinux
	antigen bundle history-substring-search

	antigen bundle "MichaelAquilina/zsh-auto-notify"
	antigen bundle unixorn/autoupdate-antigen.zshplugin

	# Syntax highlighting bundle.
	antigen bundle zsh-users/zsh-syntax-highlighting
	antigen bundle zsh-users/zsh-autosuggestions
	antigen bundle supercrabtree/k
	antigen bundle gko/ssh-connect
	antigen bundle CHNB128/enhancd

	# Load the theme.
  antigen theme denysdovhan/spaceship-prompt

	# Tell Antigen that you're done.
	antigen apply
fi

if [[ $(command -v direnv) ]]; then
	eval "$(direnv hook zsh)"
fi

if [[ $(command -v bw) ]]; then
  eval "$(bw completion --shell zsh); compdef _bw bw;"
fi

[[ -f $XDG_CONFIG_HOME/ssh/sshrc ]] && source $XDG_CONFIG_HOME/ssh/sshrc
[[ -f $XDG_CONFIG_HOME/aliasrc ]] && source $XDG_CONFIG_HOME/aliasrc
[[ -f $XDF_CONFIG_HOME/autostart ]] && source $XDG_CONFIG_HOME/autostart
[[ -f $HOME/.rvm/scripts/rvm ]] && source "$HOME/.rvm/scripts/rvm"

[ -f ~/.sman/sman.rc ] && source ~/.sman/sman.rc

export PATH=$PATH:~/.sman/bin
