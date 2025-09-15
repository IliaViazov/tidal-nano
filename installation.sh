#!/usr/bin/env bash

set -e

echo "Starting setup for TidalCycles environment..."

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Install Homebrew if not installed
if ! command_exists brew ; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed."
fi

echo "Updating Homebrew..."
brew update

# 1. Install Haskell via ghcup
if ! command_exists ghc ; then
    echo "Installing Haskell via ghcup..."
    curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
    echo "Haskell installation complete. You may need to restart your terminal or source your profile."
else
    echo "Haskell already installed."
fi

# 2. Install TidalCycles package
if ! ghc-pkg list | grep -q tidal ; then
    echo "Installing TidalCycles..."
    cabal update
    cabal install tidal
else
    echo "TidalCycles already installed."
fi

#here insert ghci-color

# 3. Install Nano editor
if ! command_exists nano ; then
    echo "Installing Nano editor..."
    brew install nano
else
    echo "Nano already installed."
fi

#here insert mv of .nanorc and syntax highlighting
# https://github.com/scopatz/nanorc

# 4. Install SuperCollider
if ! command_exists sclang ; then
    echo "Installing SuperCollider..."
    brew install --cask supercollider
else
    echo "SuperCollider already installed."
fi

# 5. Install necessary Quarks for TidalCycles
echo "Installing TidalCycles Quarks..."
sclang -D <<EOL
Quarks.install("https://github.com/tidalcycles/Dirt-Samples")
s.waitForBoot {
    "Quarks installed".postln;
};
EOL

# 6. Clone tidal-nano repository into /Applications
REPO_URL="https://github.com/IliaViazov/tidal-nano.git"
TARGET_DIR="/Applications/tidal-nano"

if [ ! -d "$TARGET_DIR" ]; then
    echo "Cloning tidal-nano repository into $TARGET_DIR..."
    git clone "$REPO_URL" "$TARGET_DIR"
else
    echo "tidal-nano already cloned in $TARGET_DIR. Pulling latest changes..."
    git -C "$TARGET_DIR" pull
fi

echo "Setup complete! Please restart your terminal and enjoy TidalCycles."
