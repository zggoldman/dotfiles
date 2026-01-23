# Install needed packages
sudo pacman -S --needed \
    zsh \
    fzf \
    ripgrep \
    neovim \
    emacs \
    zed \
    nautilus \
    ghostty

yay -S --needed wezterm-git

# Intall hyprland extras
# TODO: Check that we are using hyprland
sudo pacman -S -needed
    hyprshot \
    hyprlock \
    hypridle \
    hyprpaper \
    waybar

# Install oh-my-zsh if it's not installed already
if [ -d ~/.oh-my-zsh ]; then
  echo "Existing oh my zsh found, skipping."
else
  echo "Oh my zsh not found, installing."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

ln -sfn $(pwd)/config/emacs ~/.config/.emacs.d
ln -sfn $(pwd)/config/ghostty ~/.config
ln -sfn $(pwd)/config/nvim ~/.config
ln -sfn $(pwd)/config/hypr ~/.config
ln -sfn $(pwd)/config/waybar ~/.config
ln -sfn $(pwd)/themes/tokyo-night ~/.config/zenvironment/current/theme
ln -sfn $(pwd)/config/wezterm/.wezterm.lua ~/.wezterm.lua
ln -sfn $(pwd)/config/zed/settings.json ~/.config/zed/settings.json
ln -sfn $(pwd)/config/zed/keymap.json ~/.config/zed/keymap.json
ln -sfn $(pwd)/config/zed/snippets ~/.config/zed/snippets

ln -sfn $(pwd)/local/bin/* ~/.local/bin
ln -sfn $(pwd)/local/share ~/.local/share/zenvironment
