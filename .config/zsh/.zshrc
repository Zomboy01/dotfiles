## ~/.zshrc


###---------- EXPORTS ----------###

export BROWSER="firefox"
export EDITOR="nvim"
export VISUAL="nsxiv"

###--------- SOURCE ----------###

source ~/.config/zsh/aliases
source ~/.config/zsh/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

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

###---------- PROMPT ----------###

PROMPT=$'%{\e[1;90m%} \{ %{\e[1;32m%}%~ %{\e[1;90m%}\} %{\e[1;37m%}\ ' 

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%B ⥤    %b  ⥢ '

### ---------- OTHER ----------###

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.config/zsh/zsh_history
