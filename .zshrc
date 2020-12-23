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

#########################
setopt auto_list
setopt auto_menu
zstyle ':completion:*:default' menu select=1
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

export LANG=ja_JP.UTF-8
HISTFILE=$HOME/.zsh-history
HISTSIZE=1000000
SAVEHIST=1000000

setopt share_history

if [[ ! -d ~/.zplug ]];then
    git clone http://github.com/zplug/zplug ~/.zplug
fi

source ~/.zplug/init.zsh

zplug "zplug/zplug", hook-build:'zplug --self-manage'

#if ! zplug check --verbose; then
#    printf "Install? [Y/n]: "
#      if read -q; then
#            echo; zplug install
#              fi
#fi

zplug load --verbose

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:3

zplug "mollifier/anyframe"
zplug "b4b4r07/enhancd", use:init.sh
zplug "motemen/ghq", as:command, from:gh-r

export PATH="$PATH:/Users/leoota/miniconda3/bin"
conda activate tensorflow0120

#__conda_setup="$('/Users/leoota/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/Users/leoota/miniconda3/etc/profile.d/conda.sh" ]; then
#        . "/Users/leoota/miniconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/leoota/miniconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup

export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin/$PATH"
export PATH="$PATH:$GOPATH/bin"
