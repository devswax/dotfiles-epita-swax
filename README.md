# my dotfiles for NixPIE at EPITA

this repository contains my Hyprland setup for NixOS at EPITA.  
follow the instructions below to set it up correctly.

---

<p align="center">
  <img src="https://img.shields.io/badge/WM-Hyprland-444444?style=flat-square&logo=linux&logoColor=white" />
  <img src="https://img.shields.io/badge/OS-NixOS-5277C3?style=flat-square&logo=nixos&logoColor=white" />
  <img src="https://img.shields.io/badge/Bar-Waybar-444444?style=flat-square&logo=gnome&logoColor=white" />
  <img src="https://img.shields.io/badge/Shell-zsh-4E9A06?style=flat-square&logo=gnubash&logoColor=white" />
  <img src="https://img.shields.io/badge/EPITA-Config-0A66C2?style=flat-square&logo=gradle&logoColor=white" />
  <img src="https://img.shields.io/badge/Language-EN-8A2BE2?style=flat-square&logo=googletranslate&logoColor=white" />
  <img src="https://img.shields.io/github/last-commit/devswax/dotfiles-epita-swax?style=flat-square&logo=git&logoColor=white&color=brightgreen" />
</p>

---

## installation (first time)

follow these steps to install the configuration for the first time:

### step 1: switch to a TTY
- change your TTY (e.g., switch to `tty1` using `Ctrl + Alt + F1`, if you want switch back to i3 use `Ctrl + Alt + F2`).
- log in to your **Forge ID** account.

### step 2: clone the Repository
run the following command:
```sh
git clone https://github.com/devswax/dotfiles-epita-swax.git
```

### step 3: copy configuration files
```sh
cp -r dotfiles-epita-swax/* ~/afs/.confs/
```

### step 4: launch the configuration
```sh
bash
```

---

## every boot

each time you reboot, follow these steps to apply the configuration:

### step 1: switch to a TTY
- change your TTY (e.g., `tty1` with `Ctrl + Alt + F1`).
- log in to your **Forge ID** account.

### step 2: launch the configuration
```sh
bash
```

---

## reset

if you want to erase the configuration do:

### step 1: switch to a TTY (you must not be logged into i3!)
- change your TTY (e.g., `tty1` with `Ctrl + Alt + F1`).
- log in to your **Forge ID** account.

### step 2: reset the configuration
```sh
rm -rf ~/afs/.confs/*
cp -r /afs/cri.epita.fr/resources/confs/* ~/afs/.confs/
```
### step 3: switch to i3
- change your TTY (i.e., `tty2` with `Ctrl + Alt + F2`).
- log in again using your **Forge ID** account.


---

## keybindings

### general
| shortcut        | action |
|-----------------|--------|
| SUPER + Enter   | Open terminal (kitty) |
| SUPER + Q       | Close active window |
| SUPER + M       | Exit Hyprland |
| SUPER + E       | Open file manager (nautilus) |
| SUPER + B       | Launch Firefox |
| SUPER + D       | Application launcher (wofi) |
| SUPER + V       | Toggle floating mode |
| SUPER + F       | Fullscreen |
| SUPER + L       | Lock session via `~/afs/.confs/hyprlock.sh` (must always be used instead of hyprlock directly) |
| Print           | Take screenshot (grim + slurp + swappy) |

### mouse
| shortcut                | action |
|-------------------------|--------|
| SUPER + LMB (drag)      | Move window |
| SUPER + RMB (drag)      | Resize window |
| SUPER + Scroll ↑ / ↓    | Switch workspace |

### workspaces
| shortcut                | action |
|-------------------------|--------|
| SUPER + [1-9,0]         | Switch to workspace 1-10 |
| SUPER + SHIFT + [1-9,0] | Move active window to workspace 1-10 |
| SUPER + S               | Toggle special workspace magic |
| SUPER + SHIFT + S       | Move active window to special workspace magic |

### navigation
| shortcut                | action |
|-------------------------|--------|
| SUPER + ← / ↑ / ↓ / →   | Move focus between windows |


---

## preview
![image](https://github.com/user-attachments/assets/d9f397a9-18df-4257-9ea5-b398a0da6e46)
![image](https://github.com/user-attachments/assets/02c07110-d331-4b3e-9b7e-e41dbfe17e91)
![image](https://github.com/user-attachments/assets/ac2cd1e4-d5e3-485e-b6cd-5eac73366882)



