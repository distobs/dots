# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# debian stuff
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export PROMPT_DIRTRIM=3
export EDITOR='nvim'
alias ls="ls --group-directories-first -F"
alias vim="nvim"
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

function cl() {
	if [[ $2 -eq "o" ]]; then
		git clone https://github.com/$1 --depth=1 --branch=master
	else
		git clone https://github.com/$1
	fi
}

export MANPAGER="nvim +Man!"
