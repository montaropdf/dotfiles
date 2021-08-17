# -*- mode: sh -*-
#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
setopt APPEND_HISTORY
## for sharing history between zsh processes
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
MAILCHECK=0

# autoload -U colors
autoload -U colors

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

export HISTFILE=~/.zsh_history

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='emacs-nox'
else
    export EDITOR='emacsclient -c'
fi

export XDG_DATA_HOME=~/.local/share/

export XDG_CONFIG_HOME=~/.config

export PATH=~/.local/bin:$PATH

setopt promptsubst

zinit snippet OMZL::git.zsh

omz_libraries=(
    prompt_info_functions.zsh
    key-bindings.zsh
    history.zsh
    completion.zsh
)
for library in ${omz_libraries[@]}; do
    zinit snippet OMZL::$library
    done

omz_plugins=(
    colorize
    command-not-found
    emacs
    git
)
for plugin in ${omz_plugins[@]}; do
    # zinit snippet OMZ::plugins/$plugin/$plugin.plugin.zsh
    zinit snippet OMZP::$plugin
    done

# Two regular plugins loaded without investigating.
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting

# Plugin history-search-multi-word loaded with investigating.
zinit load zdharma/history-search-multi-word
zinit load zsh-users/zsh-history-substring-search

# Fish-like auto suggestions
zinit light zsh-users/zsh-autosuggestions

# Extra zsh completions
zinit light zsh-users/zsh-completions

zinit ice lucid atinit'fpath+=($PWD/functions.zwc $PWD/functions ${XDG_DATA_HOME}/apollo $PWD/modules.zwc $PWD/modules)'
zinit light mjrafferty/apollo-zsh-theme

APOLLO_THEME=revecloud-dev

if [ -d  $HOME/.config/shell ]
then
    for ressource in $(ls $HOME/.config/shell/*.zsh)
    do
	source ${ressource}
    done
fi

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /home/roland/prg/minio/mc mc

complete -o nospace -C /usr/local/bin/mcli mcli
