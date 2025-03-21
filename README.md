# 🖥️ Hyprland + NixOS Configuration for EPITA by Swax

This repository contains my **Hyprland** setup for **NixOS** at EPITA.  
Follow the instructions below to set it up correctly.

---

## 🚀 Installation (First Time)

Follow these steps to install the configuration for the first time:

### Step 1: Switch to a TTY
- Change your TTY (e.g., switch to `tty1` using `Ctrl + Alt + F1`, if you want switch back to i3 use `Ctrl + Alt + F2`).
- Log in to your **Forge ID** account.

### Step 2: Clone the Repository
Run the following command:
```sh
git clone https://github.com/devswax/dotfiles-epita-swax.git
```

### Step 3: Copy Configuration Files
```sh
cp -r dotfiles-epita-swax/* ~/afs/.confs/
```

### Step 4: Install the Configuration
```sh
cd afs/.confs/
./install.sh
```

---

## 🔄 Every Boot

Each time you reboot, follow these steps to apply the configuration:

### Step 1: Switch to a TTY
- Change your TTY (e.g., `tty1` with `Ctrl + Alt + F1`).
- Log in to your **Forge ID** account.

### Step 2: Apply the Configuration
```sh
cd afs/.confs/
./install.sh
```

---

## ❌​ Reset

If you want to erase the configuration do:

### Step 1: Switch to a TTY (You must not be logged into i3!)
- Change your TTY (e.g., `tty1` with `Ctrl + Alt + F1`).
- Log in to your **Forge ID** account.

### Step 2: Reset the Configuration
```sh
rm -rf afs/.confs/*
cp -r /afs/cri.epita.fr/resources/confs/* afs/.confs/
```
### Step 1: Switch to i3
- Change your TTY (i.e., `tty2` with `Ctrl + Alt + F2`).
- Log in to your **Forge ID** account.
