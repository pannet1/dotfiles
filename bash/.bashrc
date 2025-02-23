# ~/.bashrc

# set path to common scripts
export PATH="$PATH:$HOME/Scripts/client"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# added manually for autjump
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ;} history -a"
alias z=j

#pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

# Load pyenv-virtualenv automatically by adding
eval "$(pyenv virtualenv-init -)"
