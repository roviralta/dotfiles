# 💻 My Dotfiles: i3wm & Hyprland

Welcome to my dotfiles repository! 🚀

Here I keep and maintain my personal configurations for my Linux desktop environments. I have divided the repository into two main folders depending on the display server/compositor: one for **X11 (i3)** and another for **Wayland (Hyprland)**.

---

## 📁 Repository Structure

To keep everything organized, the configurations are separated into their respective folders. Some tools are shared (like the terminal or the shell), but the daemons and bars are tailored to their corresponding environment:

| Component | 🪟 X11 (`/i3`) | 🌌 Wayland (`/hyprland`) |
| :--- | :--- | :--- |
| **Window Manager / Compositor** | `i3` | `hypr` |
| **Status Bar** | `polybar` | `waybar` |
| **App Launcher** | `rofi` | `wofi` |
| **Notification Daemon** | `dunst` | `mako` |
| **Terminal Emulator** | `alacritty` | `alacritty` |
| **Shell** | `fish` | `fish` |
| **Themes (GTK)** | `gtk-3.0` & `gtk-4.0` | `gtk-3.0` & `gtk-4.0` |

---

## 🛠️ Folder Details

### 🟦 `i3` Folder (X11 Environment)
In this folder, you will find the configuration files ready to be used in a traditional X11-based environment.
* **`i3/`**: Main window manager configuration (keybindings, autostart, window rules).
* **`polybar/`**: Modules, colors, and scripts for the top/bottom status bar.
* **`rofi/`**: Themes and configuration for the application menu and scripts.
* **`dunst/`**: Appearance and behavior of pop-up notifications.

### 🟪 `hyprland` Folder (Wayland Environment)
Here are the files optimized for Wayland, taking full advantage of the animations and performance it offers.
* **`hypr/`**: Main compositor configuration (`hyprland.conf`), animations, environment variables, and keybindings.
* **`waybar/`**: Layout and modules (CSS and JSON) for the native Wayland status bar.
* **`wofi/`**: Configuration and CSS styling for the application launcher.
* **`mako/`**: Minimalist configuration for the notification system.

### 🟩 Shared Configurations
Regardless of the environment you boot into, both make use of:
* **`alacritty/`**: My trusty GPU-accelerated terminal.
* **`fish/`**: Interactive shell configuration, aliases, and variables.
* **`gtk-3.0/` & `gtk-4.0/`**: Configuration files to maintain a consistent visual appearance across GTK applications in any graphical environment.

---

## ⚙️ Installation / Usage

To use these configurations, simply clone this repository and create symbolic links (*symlinks*) or copy the desired folders into your `~/.config/` directory.

```bash
# Example cloning the repository
git clone [https://github.com/YOUR-USERNAME/YOUR-DOTFILES-REPO.git](https://github.com/YOUR-USERNAME/YOUR-DOTFILES-REPO.git) ~/dotfiles

# Example installing the Hyprland configuration
cp -r ~/dotfiles/hyprland/* ~/.config/
