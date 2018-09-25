. ~/bin/bash_colors.sh

# Colorize terminal
export TERM='xterm-color'
alias ls='ls -G'
alias ll='ls -lG'
export LSCOLORS="exfxcxdxbxegedabagacad"
export GREP_OPTIONS="--color"

# Erase duplicates in history
export HISTCONTROL=erasedups
# Store 10k history entries
export HISTSIZE=10000
# Append to the history file when exiting instead of overwriting it
shopt -s histappend

# Cleanup python pyc files
alias rmpyc='find . -type f -name "*.pyc" -print -delete'

# Git prompt components
# Taken from Gary Berndhat dotfiles: https://github.com/garybernhardt/dotfiles/
grb_git_prompt() {
    local g="$(__gitdir)"
    if [ -n "$g" ]; then
        # The __git_ps1 function inserts the current git branch where %s is
        local GIT_PROMPT=`__git_ps1 "(%s)"`
        echo ${GIT_PROMPT}
    fi
}

PS1="${BLUE}\h: \W${YELLOW}\$(grb_git_prompt) ${BLUE}\u${NORMAL}\\n$ "

source ~/bin/git-completion.bash

