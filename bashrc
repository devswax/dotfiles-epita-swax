# ~/.bashrc

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

if [[ -z "$DISPLAY" && -z "$WAYLAND_DISPLAY" ]]; then
    packages=(
        nixpkgs#zsh
        nixpkgs#hyprland
        nixpkgs#hyprlock
        nixpkgs#hyprpaper
        nixpkgs#xdg-desktop-portal-hyprland
        nixpkgs#waybar
        nixpkgs#wofi
        nixpkgs#kitty
        nixpkgs#starship
        nixpkgs#lsd
        nixpkgs#xwayland
        nixpkgs#neovim
        nixpkgs#playerctl
        nixpkgs#bluez
        nixpkgs#python312
        nixpkgs#mako
        nixpkgs#gtk3
        nixpkgs#gtk4
        nixpkgs#nautilus
        nixpkgs#fastfetch
        nixpkgs#nerd-fonts.iosevka
    )

    nix profile install --impure "${packages[@]}"
    nix profile install --impure --expr 'with builtins.getFlake("flake:nixpkgs"); legacyPackages.x86_64-linux.nerdfonts.override { fonts = ["JetBrainsMono" "Iosevka"]; }'

    if which zsh; then
        export SHELL="$(which zsh)"
    fi

    CURSOR_PATH=~/.local/share/icons
    if ! test -d "$CURSOR_PATH/rose"; then
        echo "Installing custom cursor..."
        mkdir -p "$CURSOR_PATH"
        git clone https://github.com/ndom91/rose-pine-hyprcursor.git "$CURSOR_PATH/rose"
    fi

    # check your user.name for changes in the bookmarks
    USER_NAME=$(basename "$HOME")
    sed -i "s|/home/user.name|/home/$USER_NAME|g" ~/afs/.confs/config/gtk-3.0/bookmarks

    exec Hyprland || logout
fi

