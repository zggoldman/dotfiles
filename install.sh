# Install or update brew.
echo "Checking for brew..."
which -s brew
if [[ $? != 0 ]] ; then
  echo "Brew not found, installing brew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Brew installation found, updating..."
  brew update
fi

# Install oh-my-zsh.
if [ -d ~/.oh-my-zsh ]; then
  echo "Existing oh my zsh found, skipping."
else
  echo "Oh my zsh not found, installing."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

brew install fzf
brew install ripgrep
brew install neovim
brew install --cask wezterm

ln -s $(pwd)/nvim ~/.config/nvim
ln -s $(pwd)/wezterm/.wezterm.lua ~/.wezterm.lua
