## ~/.zshrc


###---------- EXPORTS ----------###

export BROWSER="firefox"
export EDITOR="nvim"
export VISUAL="nsxiv"

###--------- SOURCE ----------###

source ~/.config/zsh/aliases
source ~/.config/zsh/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source ~/.config/zsh/.zsh/promptline.sh

###--------- AUTOCOMPLETE ---------###
autoload -Uz promptinit
promptinit
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

setopt extendedglob
#setopt autocd
cdpath=(/ $HOME/.config $HOME/.local)

### ---------- OTHER ----------###

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.config/zsh/zsh_history
