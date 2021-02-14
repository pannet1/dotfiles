export TMPDIR="/tmp"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/pannet1/conf/oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=random

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=( "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
 DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=1

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
 HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(autoenv cp debian dircycle extract per-directory-history taskwarrior z zsh-autosuggestions git history vi-mode composer fasd rsync wd zsh_reload)


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias zshconf="vi ~/dotfiles/zshrc"
alias vimconf="vi ~/dotfiles/vimrc" 
alias tmuxconf="vi ~/dotfiles/tmux.conf"						
alias ohmyzsh="vi ~/.oh-my-zsh"
alias ide="tmux -f ~/dotfiles/tmux.conf attach"
alias 1personal="cd /media/pannet1/FAT32/local/1personal;ls -la"
alias 3linux="cd /media/pannet1/FAT32/local/3linux;ls -la"
alias library="cd /media/pannet1/FAT32/local/Library;ls -la"
alias hosting="cd /media/pannet1/FAT32/local/2backup/hosting/home;ls -la"
alias hint="cd ~/dotfiles/tmux/hints;ls -la"						
alias 1st="3linux;cd mxlinux;vi _1stRun.sh;sudo bash ./_1stRun.sh"
alias html="cd /var/www/html;ls -l"
alias yt="clear;echo 'config file is in ~/.config';youtube-viewer"
alias ff="find . -type f -name "
alias fd="find . -type d -name "
alias act="source env/bin/activate;which python"
alias deact="deactivate"
alias grom="gromit-mpx --key 'w'"
alias sshv="ssh -v carrierc@ecomsense.in"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#vim mode
bindkey -v

# because python global pip install could not find 
export PATH=$PATH:/home/pannet1/.local/bin:/usr/local/lib/nodejs:/usr/bin/composer:/home/pannet1/dotfiles:/usr/local/go/bin
