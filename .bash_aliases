# Bash Aliases
# =============

# Some Aliases
alias c='clear' # can't get Ctrl+L to work right
alias df='df -H'    #show drive usage
alias du='du -ch'   #directory sizes
alias findn='find -iname'
alias free='free -m -l -t'      #RAM usage
alias la='ls -a'
alias ll='ls -alh'
alias lslist='ls -Q --format=commas'  # turn contents of dir into list
alias lt='ls -alht'  # sort by newest modification time
alias mkdir='mkdir -pv'  # create parent dirs and verbose
alias nowtime='date +"%T"'      # time string
alias nowdate='date +"%d-%m-%Y"' # date string
alias off='shutdown -h now'
alias op='xdg-open'
alias ports='netstat -tuanp'   #show open ports


# Open Dotfiles
alias dotalias='vi ~/.dotfiles/.bash_aliases'
alias dotbash='vi ~/.dotfiles/.bashrc'
alias dotgit='vi ~/.dotfiles/.gitconfig'
alias dotprivate='vi ~/.dotfiles/.private'
alias dottmux='vi ~/.dotfiles/.tmux.conf.local'
alias dotvim='vi ~/.dotfiles/.vimrc'


# Docker
alias d='docker'
alias dc='docker container'
alias dcom='docker-compose'
alias dps='docker ps -a'


# Kubernetes
alias kc='kubectl'
alias mk='minikube'


# Color Output
alias ccat='highlight --out-format=ansi'  # cat output with syntax highlighting
alias diff='colordiff'
alias grep='grep --color=auto'
alias ls='ls --color=auto'


# Confirmation Prompt
alias cp='cp -i'
alias ln='ln -i'
alias mv='mv -i'


# VIM Splits
alias vih='vi -o'
alias viha='vih *'
alias viv='vi -O'
alias viva='viv *'


# source private aliases and function aliases
source ~/.dotfiles/.private
source ~/.dotfiles/.bash_functions
