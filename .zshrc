# Path to your oh-my-zsh installation.
export ZSH=/Users/Vova/.oh-my-zsh

# Go Path
# export GOPATH=$HOME/go
# PATH=$PATH:$GOPATH/bin

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="steeef"

# Init ruby version manager
# Enable shims and autocompletion
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Load NVM

export NVM_DIR="/Users/Vova/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Source zshaslias

if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
else
    print "404: ~/.zsh_aliases not found."
fi

# Source zshfunctions

if [ -f ~/.zsh_functions ]; then
    source ~/.zsh_functions
else
    print "404: ~/.zsh_functions not found."
fi

# Online check
# Add cron job */1    *    *    *    * ~/.online-check.sh
# If you don't want to get mails in /vat/mail/<user>
# You can add MAILTO="" on the very top of your cron file
# To edit cron file use env EDITOR=vim crontab -e command
ONLINE='%{%F{green}%}◉'
OFFLINE='%{%F{red}%}⦿'

function prompt_online() {
    if [[ -f ~/.offline ]]; then
        echo $OFFLINE
    else
        echo $ONLINE
    fi
}

RPROMPT='$(prompt_online)'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(sublime z web-search history-substring-search history extract colored-man colorize github last-working-dir nyan last-working-dir vagrant zsh-syntax-highlighting)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="subl ~/.zshrc"
# alias ohmyzsh="subl ~/.oh-my-zsh"
