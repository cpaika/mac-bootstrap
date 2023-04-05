### Todo
# Can we have mac settings and notifications sync somewhere?
# Publish this on github?

if ! command -v brew &> /dev/null
then
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/christopherpaika/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew bundle install

mkdir ~/projects
mkdir ~/projects/scratch

# ASDF Installs
## Java 
asdf plugin add java
asdf install java adoptopenjdk-11.0.18+10

## Ruby
asdf plugin add ruby
asdf plugin-update ruby
asdf install ruby latest

asdf reshim

# Set global versions
asdf global java adoptopenjdk-11.0.8+10
asdf global ruby latest

# Install Jekyll
gem install bundler jekyll

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup gh
gh auth login
gh config set editor vim

# Setup git
mkdir -p ~/.git-templates/hooks
git config --global init.templatedir '~/.git-templates'

git config --global push.default current
git config --global clone defaultRemoteName upstream
git config --global init.defaultBranch main

#!/bin/bash

CONFIG_FILE="git_config.txt"

if [ ! -f "$CONFIG_FILE" ]; then
    read -p "Please enter your name as it will appear on git commits: " name
    read -p "Please enter your email as it will appear on git commits: " email

    git config --global user.name "$name"
    git config --global user.email "$email"

    echo "name=$name" > $CONFIG_FILE
    echo "email=$email" >> $CONFIG_FILE
else
    source $CONFIG_FILE
    git config --global user.name "$name"
    git config --global user.email "$email"
fi

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Setup Crontab to update Homebrew regularly so it doesn't take forever 
(crontab -l 2>/dev/null; echo "0 20 * * * /bin/bash -c 'brew update && brew upgrade'") | crontab -

# Install Python and useful packages
pip3 install 
pip3 install jupyter
# Also need graphviz binary installed via Homebrew as well.
pip3 install graphviz

# Configure Sublime
source ./scripts/configure-sublime.sh

# Override ./zshrc and create a symlink back so you can commit changes
cp -n ./zshrc ~/.zshrc
rm ./zshrc
ln -s ~/.zshrc ./zshrc


# Open apps that need to be authorized or logged in to
open -a "Amphetamine"
open -a "Spotify"
open -a "Omnifocus"
open -a "Discord"
open -a "iTerm"
open -a "Postman"
open -a "Rectangle"
open -a "Alfred 5"
open -a "Obsidian"
open -a "Google Chrome"
open -a "Webstorm"
open -a "Brave Browser"
