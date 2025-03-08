#
# ~/.bashrc
#

# TODO move the config to .zshrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set to superior editing mode
set -o vi

# keybinds
bind -x '"\C-l":clear'

# ~~~~~~~~~~~~~~~ Prompt ~~~~~~~~~~~~~~~~~~~~~~~~

if [ -z "${NOZSH}" ] && \
   [ "$TERM" = "xterm-256color" -o "$TERM" = "screen-256color" -o "$TERM" = "tmux-256color" -o "$TERM" = "screen" -o "$TERM" = "xterm" -o "$TERM" = "tmux" ] && \
   type zsh &>/dev/null; then
	export SHELL=$(which zsh)
  echo "Conditions met! Starting Zsh..."
  exec zsh
else
  echo "Failed conditions:"
  [ -z "${NOZSH}" ] || echo "NOZSH is set"
  [ "$TERM" = "xterm-256color" -o "$TERM" = "screen-256color" -o "$TERM" = "tmux-256color" ] || echo "TERM mismatch"
  type zsh &>/dev/null || echo "Zsh not found"
fi
# ~~~~~~~~~~~~~~~ Functions ~~~~~~~~~~~~~~~~~~~~~~~~

# This function is stolen from rwxrob

clone() {
	local repo="$1" user
	local repo="${repo#https://github.com/}"
	local repo="${repo#git@github.com:}"
	if [[ $repo =~ / ]]; then
		user="${repo%%/*}"
	else
		user="$GITUSER"
		[[ -z "$user" ]] && user="$USER"
	fi
	local name="${repo##*/}"
	local userd="$REPOS/github.com/$user"
	local path="$userd/$name"
	[[ -d "$path" ]] && cd "$path" && return
	mkdir -p "$userd"
	cd "$userd"
	echo gh repo clone "$user/$name" -- --recurse-submodule
	gh repo clone "$user/$name" -- --recurse-submodule
	cd "$name"
} && export -f clone

