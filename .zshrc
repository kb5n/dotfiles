#################################################
# medpeer toolbox
#################################################
export PATH=$HOME/workspace/medpeer/toolbox/bin:$PATH

#################################################
# zsh-syntax-highlighting
#################################################
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#################################################
# java
#################################################
export JAVA_HOME=`/usr/libexec/java_home`

#################################################
# nodebrew
#################################################
export PATH=$HOME/.nodebrew/current/bin:$PATH

#################################################
# pyenv
#################################################
export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:$PATH"
eval "$(pyenv init -)"

#################################################
# rbenv
#################################################
eval "$(rbenv init -)"

#################################################
# other paths
#################################################
export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH=$HOME/.embulk/bin:$PATH

#################################################
# history
#################################################
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_dups
setopt share_history
setopt hist_ignore_all_dups

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

#################################################
# autocomplete
#################################################
autoload -U compinit; compinit
autoload -Uz colors; colors

#################################################
# autocd
#################################################
setopt auto_cd
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

setopt auto_pushd
setopt pushd_ignore_dups

#################################################
# print_eight_bit
#################################################
#setopt print_eight_bit

#################################################
# vcs_info
#################################################
autoload -Uz vcs_info
setopt prompt_subst

zstyle ':vcs_info:*' formats ' [%F{green}%b%f]'
zstyle ':vcs_info:*' actionformats ' [%F{green}%b%f(%F{red}%a%f)]'

#################################################
# prompt
#################################################
precmd() { vcs_info }

PROMPT='%B%F{cyan}%D{%g/%m/%d}%f%b %F{blue}%D{%H:%M}%f %F{yellow}%~%f${vcs_info_msg_0_}%# '

#################################################
# aliases
#################################################
case ${OSTYPE} in
    darwin*)
        export CLICOLOR=1
        alias ls='ls -G -F'
        ;;
    linux*)
        alias ls='ls -F --color=auto'
        ;;
esac

alias ll='ls -la'
alias pwgen='pwgen -csBn 16 1'

