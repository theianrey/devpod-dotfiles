# if running bash
if [ -n "$BASH_VERSION" ]; then
  #
  if [ -f "$HOME"/.bashrc ]; then
    . "$HOME"/.bashrc
  fi
fi

# set path 
if [ -d "$HOME/bin" ]; then
  PATH=$HOME/bin:$PATH
fi

#
if [ -d "$HOME/.local/bin" ]; then
  PATH=$HOME/.local/bin/:$PATH
fi

# ~~~~~~~~~~~~~~~ Environment Variables ~~~~~~~~~~~~~~~~~~~~~~~~

export VISUAL=nvim
export EDITOR=nvim
export TERM=screen-256color

# config
# export BROWSER="firefox"

# directories
export REPOS="$HOME/Repos"
export GITUSER="theianrey"
export GHREPOS="$REPOS/github.com/$GITUSER"
export DOTFILES="$GHREPOS/dotfiles"
export LAB="$GHREPOS/lab"
export SCRIPTS="$DOTFILES/scripts"

# Go related. In general all executables and scripts go in .local/bin
export GOBIN="$HOME/.local/bin"
export GOPRIVATE="github.com/$GITUSER/*,gitlab.com/$GITUSER/*"
# export GOPATH="$HOME/.local/share/go"
export GOPATH="$HOME/go/"


# ~~~~~~~~~~~~~~~ Path configuration ~~~~~~~~~~~~~~~~~~~~~~~~

# ~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~~~~~~~

export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace

