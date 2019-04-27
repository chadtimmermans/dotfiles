# Bash Aliases
# =============

# source private aliases and function aliases
source ~/.dotfiles/.private
source ~/.dotfiles/.bash_functions

# Open Directories
alias main='cd ~/main'
alias code='cd ~/code'
alias dots='cd ~/.dotfiles'
alias notes='cd ~/linux/etc/notes'

# Open Dotfiles
alias configvim='vi ~/.vimrc'
alias configalias='vi ~/.bash_aliases'
alias configbash='vi ~/.bashrc'
alias configgit='vi ~/.gitconfig'

# Docker
alias di='docker image'
alias dis='docker images'
alias dcon='docker container'
alias dps='docker ps -a'

# Other Aliases
alias op='xdg-open'
alias findn='find -iname'
alias la='ls -a'
alias ll='ls -alh'
alias lt='ls -alht'
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
