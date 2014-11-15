# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
source /etc/bash_completion.d/git
source ~/.git-prompt.sh
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
