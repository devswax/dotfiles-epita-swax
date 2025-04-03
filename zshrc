# ~/.zshrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d ~/afs/bin ] ; then
    export PATH=~/afs/bin:$PATH
fi

if [ -d ~/.local/bin ] ; then
    export PATH=~/.local/bin:$PATH
fi

export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"

export EDITOR=vim
#export EDITOR=emacs

# Color support for less
#export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
#export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
#export LESS_TERMCAP_me=$'\E[0m'           # end mode
#export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
#export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
#export LESS_TERMCAP_ue=$'\E[0m'           # end underline
#export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

alias ls='ls --color=auto'
alias grep='grep --color -n'
PS1='[\u@\h \W]\$ '

if [[ $TERM = "xterm-kitty" ]]; then
    # Enable the subsequent settings only in interactive sessions
    case $- in
    *i*) ;;
    *) return ;;
    esac

    # Preferred editor for local and remote sessions
    if [[ -n $SSH_CONNECTION ]]; then
        export EDITOR='vim'
    else
        export EDITOR='nvim'
    fi

    export HISTSIZE=1000
    export HISTFILESIZE=2000

    # SDL
    export SDL_VIDEODRIVER="wayland,x11"

    # starship
    export STARSHIP_CONFIG=~/.starship.toml

    eval "$(starship init zsh)"
fi
