# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ "$TERM" = xterm ]; then TERM=xterm-256color; fi

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
bakgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

source /etc/bash_completion.d/git
source ~/.git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1

PS1_GIT='$(__git_ps1 " (%s)")'
PS1="\[$txtrst\][\[$txtcyn\]\u@\h\[$txtrst\] \w\[$bldgrn\]$PS1_GIT\[$txtrst\]]\[$txtred\]\$ \[$txtrst\]"

# Prevent multiple terminal sessions from overwriting bash history
export HISTCONTROL=ignoredups:erasedups
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Increase the size of bash history
export HISTSIZE=100000
export HISTFILESIZE=100000

alias grep='grep --color'
alias la='ls -lA'
alias tree='tree -Chup'
alias ports='sudo netstat -nlp --protocol=inet'
alias ssh='ssh -A'
alias tmux='TERM=screen-256color tmux -2'

#function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
function gi() { wget -q -O - https://www.gitignore.io/api/$@ ;}
