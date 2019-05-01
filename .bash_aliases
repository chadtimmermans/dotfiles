# Bash Aliases
# =============

# source private aliases and function aliases
source ~/.dotfiles/.private
source ~/.dotfiles/.bash_functions


# Some Aliases
alias c='clear' # can't get Ctrl+L to work right
alias op='xdg-open'
alias manl='tldr'  # shorter TLDR man pages
alias findn='find -iname'
alias la='ls -a'
alias ll='ls -alh'
alias lt='ls -alht'  # sort by newest modification time
alias mkdir='mkdir -pv'  # create parent dirs and verbose
alias psu='ps -U $USER'  # show user processes
alias free='free -m -l -t'      #RAM usage
alias df='df -H'    #show drive usage
alias du='du -ch'   #directory sizes
alias ports='netstat -tulanp'   #show open ports
alias nowtime='date +"%T"'      # time string
alias nowdate='date +"%d-%m-%Y"' # date string
alias lslist='ls -Q --format=commas'  # turn contents of dir into list
alias update='~/linux/scripts/update.sh'
alias off='shutdown -h now'


# Open Directories
alias main='cd ~/main'
alias code='cd ~/code'
alias dots='cd ~/.dotfiles'


# Open Dotfiles
alias configvim='vi ~/.dotfiles/.vimrc'
alias configalias='vi ~/.dotfiles/.bash_aliases'
alias configbash='vi ~/.dotfiles/.bashrc'
alias configgit='vi ~/.dotfiles/.gitconfig'


# Docker
alias di='docker image'
alias dis='docker images'
alias dcon='docker container'
alias dps='docker ps -a'


# Color Output
alias diff='colordiff'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias ccat='highlight --out-format=ansi'  # cat output with syntax highlighting


# Confirmation Prompt
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'


# WSL Specific
if grep -qE '(Microsoft|WSL)' /proc/version &> /dev/null ; then 
  alias op='explorer.exe'
  alias watom="/mnt/c/Windows/System32/cmd.exe /c 'atom'"
  alias wpython="/mnt/c/Windows/System32/cmd.exe /c 'C:\Users\Chad\AppData\Local\Programs\Python\Python36\python.exe'"
fi
