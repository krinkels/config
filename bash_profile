# -G only works on OS X, use --color for Linux
if [[ $OSTYPE == darwin* ]]; then
    alias ls='ls -G'
    alias la='ls -G -a'
    alias ll='ls -G -l'
elif [[ $OSTYPE == linux-gnu ]]; then
    alias ls='ls --color'
    alias la='ls --color -a'
    alias ll='ls --color -l'
fi

alias vinotes='vi `date "+%m-%d-%y.txt"`'
alias pwdcp='echo -n `pwd` | pbcopy'

# prompts
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# ANSI color codes
RS="\[\033[0m\]"    # reset
HC="\[\033[1m\]"    # hicolor
UL="\[\033[4m\]"    # underline
INV="\[\033[7m\]"  # inverse background and foreground
FBLK="\[\033[30m\]" # foreground black
FRED="\[\033[31m\]" # foreground red
FGRN="\[\033[32m\]" # foreground green
FYEL="\[\033[33m\]" # foreground yellow
FBLE="\[\033[34m\]" # foreground blue
FMAG="\[\033[35m\]" # foreground magenta
FCYN="\[\033[36m\]" # foreground cyan
FWHT="\[\033[37m\]" # foreground white

# to achieve bold, don't mess around with tput, just use the 1; color code
# see http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html for example
FBLKBOLD="\[\033[1;30m\]" # foreground black bold

BBLK="\[\033[40m\]" # background black
BRED="\[\033[41m\]" # background red
BGRN="\[\033[42m\]" # background green
BYEL="\[\033[43m\]" # background yellow
BBLE="\[\033[44m\]" # background blue
BMAG="\[\033[45m\]" # background magenta
BCYN="\[\033[46m\]" # background cyan
BWHT="\[\033[47m\]" # background white

export PS1="${FGRN}\u${RS}@\h:\W\$(~/bin/vcprompt -f '[${FGRN}%b${RS}:${FCYN}%h%m%a%u${RS}]')${FMAG}$ ${RS}"
