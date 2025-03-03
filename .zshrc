# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="avit"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh


# ~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~~~

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#
alias v=nvim
# alias vim=nvim

# cd
alias ..="cd .."
alias scripts='cd $SCRIPTS'

alias c="clear"

# ls
alias ls='ls --color=auto'
alias ll='ls -la'
# alias la='exa -laghm@ --all --icons --git --color=always'
alias la='ls -lathr'

# finds all files recursively and sorts by last modification, ignore hidden files
alias lastmod='find . -type f -not -path "*/\.*" -exec ls -lrt {} +'

alias sv='sudoedit'
alias t='tmux'
alias e='exit'
alias syu='sudo pacman -Syu'

# git
# alias gp='git pull'
# alias gs='git status'
alias lg='lazygit'

# ricing
# alias et='v ~/.config/awesome/themes/powerarrow/theme-personal.lua'
# alias ett='v ~/.config/awesome/themes/powerarrow-dark/theme-personal.lua'
# alias er='v ~/.config/awesome/rc.lua'
alias eb='v ~/.bashrc'
alias ev='cd ~/.config/nvim/ && v init.lua'
alias sbr='source ~/.bashrc'

# fun
alias fishies=asciiquarium


