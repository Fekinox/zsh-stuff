# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/feki/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# DEFINITIONS

PATH+=':/home/feki/scripts'
export MAN_DISABLE_SECCOMP=1

# ALIASES
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias rr='ranger'
alias c='clear'

# FUNCTIONS

source fekutils.sh

# If the zshrc has changed, reload it
function checkzshrc () {
	source prompt.sh
}

precmd_functions=(checkzshrc)

# MISC

unsetopt PROMPT_SP
