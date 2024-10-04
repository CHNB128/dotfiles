# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

	# Syntax highlighting bundle.
	antigen bundle zsh-users/zsh-syntax-highlighting
	antigen bundle zsh-users/zsh-autosuggestions

  antigen theme romkatv/powerlevel10k

	# Tell Antigen that you're done.
	antigen apply
fi

[[ $(command -v zoxide) ]] && eval "$(zoxide init zsh)"
[[ -f /usr/share/nvm/init-nvm.sh ]] && source /usr/share/nvm/init-nvm.sh
[[ -f $XDG_CONFIG_HOME/ssh/sshrc ]] && source $XDG_CONFIG_HOME/ssh/sshrc
[[ -f $XDG_CONFIG_HOME/aliasrc ]] && source $XDG_CONFIG_HOME/aliasrc
[[ -f $XDF_CONFIG_HOME/autostart ]] && source $XDG_CONFIG_HOME/autostart

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
