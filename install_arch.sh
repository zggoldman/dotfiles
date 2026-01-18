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

ln -s $(pwd)/emacs ~/.config/.emacs.d
ln -s $(pwd)/ghostty ~/.config
ln -s $(pwd)/nvim ~/.config
ln -s $(pwd)/hypr ~/.config
ln -s $(pwd)/waybar ~/.config
ln -s $(pwd)/themes/tokyo-night ~/.config/zenvironment/current/theme
ln -s $(pwd)/wezterm/.wezterm.lua ~/.wezterm.lua
ln -s $(pwd)/zed/settings.json ~/.config/zed/settings.json
ln -s $(pwd)/zed/keymap.json ~/.config/zed/keymap.json
ln -s $(pwd)/zed/snippets ~/.config/zed/snippets

ln -s $(pwd)/local/bin/* ~/.local/bin
ln -s $(pwd)/local/share ~/.local/share/zenvironment
