"$HOME/.config/scripts/dracula-tty.sh"
[[ -f $HOME/.config/envrc ]] && source ~/.config/envrc

COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"
ANTIGEN_PATH=$XDG_CONFIG_HOME/scripts/antigen.zsh

export AUTO_NOTIFY_THRESHOLD=20

if [[ -f $ANTIGEN_PATH ]]; then
	source $ANTIGEN_PATH

	# Load the oh-my-zsh's library.
	antigen use oh-my-zsh

	# Bundles from the default repo (robbyrussell's oh-my-zsh).
	antigen bundle git
	antigen bundle sudo
	antigen bundle battery
	antigen bundle command-not-found
	antigen bundle adb
	antigen bundle archlinux
	antigen bundle history-substring-search

	antigen bundle "MichaelAquilina/zsh-auto-notify"
	antigen bundle unixorn/autoupdate-antigen.zshplugin

	# Syntax highlighting bundle.
	antigen bundle zsh-users/zsh-syntax-highlighting
	antigen bundle zsh-users/zsh-autosuggestions
	antigen bundle gko/ssh-connect
	antigen bundle CHNB128/enhancd

	# Tell Antigen that you're done.
	antigen apply
fi

[[ $(command -v direnv) ]] && eval "$(direnv hook zsh)"
[[ $(command -v navi) ]] && eval "$(navi widget zsh)"
[[ $(command -v bw) ]] && eval "$(bw completion --shell zsh); compdef _bw bw;"
# https://github.com/starship/starship
[[ $(command -v starship) ]] && eval "$(starship init zsh)"


[[ -f $XDG_CONFIG_HOME/ssh/sshrc ]] && source $XDG_CONFIG_HOME/ssh/sshrc
[[ -f $XDG_CONFIG_HOME/aliasrc ]] && source $XDG_CONFIG_HOME/aliasrc
[[ -f $XDF_CONFIG_HOME/autostart ]] && source $XDG_CONFIG_HOME/autostart
[[ -f $HOME/.rvm/scripts/rvm ]] && source "$HOME/.rvm/scripts/rvm"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
