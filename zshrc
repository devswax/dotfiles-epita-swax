#          _              
#  _______| |__  _ __ ___ 
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__ 
# /___|___/_| |_|_|  \___|
#
# Welcome to my Hyprlock config by Swax
# https://github.com/devswax


#########################
### INTERACTIVE CHECK ###
#########################

[[ $- != *i* ]] && return


###################
###  PATH SETUP ###
###################

export PATH="$HOME/.local/bin:$PATH"
[ -d "$HOME/afs/bin" ] && export PATH="$HOME/afs/bin:$PATH"


###########################
### LOCALE AND ENCODING ###
###########################

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export NNTPSERVER="news.epita.fr"
export EDITOR=vim


###############
### ALIASES ###
###############

alias ls='eza --icons --group-directories-first'
alias la='eza -a --icons --group-directories-first'
alias ll='eza -alF --icons --group-directories-first'
alias cls='clear'
alias grep='grep --color=auto -n'


################
### STARSHIP ###
################

export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
command -v starship &>/dev/null && eval "$(starship init zsh)"


#########################
### HISTORY SETTINGS ###
#########################

HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=50000
setopt HIST_IGNORE_DUPS SHARE_HISTORY


###############
### PLUGINS ###
###############

autoload -Uz compinit
compinit

source ~/.nix-profile/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.nix-profile/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' format '%B%FCompleting %d%b%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select
zstyle ':completion:*:descriptions' format "%B%d%b"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#668e89,underline'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#668e89,underline'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#668e89'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#668e89'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#668e89'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#668e89'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#668e89'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#668e89'
ZSH_HIGHLIGHT_STYLES[function]='fg=#668e89'


############################
### PARSEC (only for me) ###
############################

if command -v parsecd >/dev/null 2>&1; then
    alias parsec='export LIBVA_DRIVER_NAME=iHD; export LIBVA_DRIVERS_PATH=$(dirname $(find /nix/store -path "*/lib/dri/iHD_drv_video.so" 2>/dev/null | head -1)); vainfo --display drm --device /dev/dri/renderD128; parsecd'
fi
