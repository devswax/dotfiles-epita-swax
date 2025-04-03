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
bash
```

---

## 🔄 Every Boot

Each time you reboot, follow these steps to apply the configuration:

### Step 1: Switch to a TTY
- Change your TTY (e.g., `tty1` with `Ctrl + Alt + F1`).
- Log in to your **Forge ID** account.

### Step 2: Apply the Configuration
```sh
bash
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
### Step 3: Switch to i3
- Change your TTY (i.e., `tty2` with `Ctrl + Alt + F2`).
- Log in again using your **Forge ID** account.


---

## 📸 Preview
![image](https://github.com/user-attachments/assets/d9f397a9-18df-4257-9ea5-b398a0da6e46)
![image](https://github.com/user-attachments/assets/02c07110-d331-4b3e-9b7e-e41dbfe17e91)
![image](https://github.com/user-attachments/assets/ac2cd1e4-d5e3-485e-b6cd-5eac73366882)



