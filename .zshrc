# Setting of zsh-completions
if [ -e /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi
autoload -U compinit
compinit -u

# prompt
PROMPT='%m@%n %F{1}%~%f$'

#########################
# aliases
# Git setting
alias g='git'
alias gs='git status'
alias gb='git branch'
alias gc='git clone'
alias gco='git checkout'
alias gct='git commit'
alias gg='git grep'
alias ga='git add'
alias gd='git diff'
alias gl='git log'
alias gcom='git checkout master'
alias gfu='git fetch upstream'
alias gfo='git fetch origin'
alias gmod='git merge origin/develop'
alias gmud='git merge upstream/develop'
alias gmom='git merge origin/master'
alias gcm='git commit -m'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gs='git stash'
alias gsl='git stash list'
alias gsu='git stash -u'
alias gsp='git stash pop'

alias v='vim'
alias vi='vim'
alias ls='ls -G'
alias la='ls -a'
alias ll='ls -lh'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias c='clear'
alias h='history'
alias vzsh='vim ~/.zshrc'
alias szsh='source ~/.zshrc'

# option
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt extended_glob
setopt auto_cd
setopt correct

#export PATH="$PATH:/usr/local/var/postgres"
export PATH="$PATH:/Users/leoota/miniconda3/bin"

