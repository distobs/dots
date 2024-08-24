# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

worktimer () {
	dunstify "work time piece of shit";
	sleep "$1";
	dunstify "fucking work time is over rest time now";
	sleep "$2";
	dunstify "fucking rest time is over work time now";
}

export PROMPT_DIRTRIM=3
alias obsidian="flatpak run md.obsidian.Obsidian"
export EDITOR='nvim'
. "$HOME/.cargo/env"
alias ls="ls --group-directories-first -F"
alias vim="nvim"

function cl() {
	if [[ $2 -eq "o" ]]; then
		git clone https://github.com/$1 --depth=1 --branch=master
	else
		git clone https://github.com/$1
	fi
}

export MANPAGER="nvim +Man!"
