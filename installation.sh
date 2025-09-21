#!/usr/bin/env bash
install_path= ~/.nano

set -e

echo "Starting setup for TidalCycles environment..."

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}


# 0. Clone tidal-nano repository into /Applications
REPO_URL="https://github.com/IliaViazov/tidal-nano.git"
TARGET_DIR="/Applications/tidal-nano"

if [ ! -d "$TARGET_DIR" ]; then
    echo "Cloning tidal-nano repository into $TARGET_DIR..."
    git clone "$REPO_URL" "$TARGET_DIR"
else
    echo "tidal-nano already cloned in $TARGET_DIR. Pulling latest changes..."
    git -C "$TARGET_DIR" pull
fi

# Install Homebrew if not installed
if ! command_exists brew ; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "export PATH=\"$PATH\"" >> ~/.bashrc
else
    echo "Homebrew already installed."
    echo "export PATH=\"$PATH\"" >> ~/.bashrc
fi

echo "Updating Homebrew..."
brew update

# 1. Install Haskell via ghcup
if ! command_exists ghc ; then
    echo "Installing Haskell via ghcup..."
    curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
    echo "Haskell installation complete. You may need to restart your terminal or source your profile."
    echo "export PATH=\"$PATH\"" >> ~/.bashrc
else
    echo "Haskell already installed."
    echo "export PATH=\"$PATH\"" >> ~/.bashrc
fi

# 2. Install TidalCycles package
if ! ghc-pkg list | grep -q tidal ; then
    echo "Installing TidalCycles..."
    cabal update
    cabal install tidal
    echo "export PATH=\"$PATH\"" >> ~/.bashrc
else
    echo "TidalCycles already installed."
    echo "export PATH=\"$PATH\"" >> ~/.bashrc
fi

# 3.a Install Nano editor and highlight
if ! command_exists nano ; then
    echo "Installing Nano editor..."
    brew install nano
    git clone https://github.com/scopatz/nanorc.git $install_path
    echo "include $install_path/*.nanorc" >> ~/.nanorc
    echo "export PATH=\"$PATH\"" >> ~/.bashrc
else
    echo "Nano already installed."
    echo "export PATH=\"$PATH\"" >> ~/.bashrc
fi

# 3.b Install Glow

if ! command_exists glow ; then
    echo "Installing Glow..."
    brew install glow
    echo "export PATH=\"$PATH\"" >> ~/.bashrc
else
    echo "Glow exists"
    echo "export PATH=\"$PATH\"" >> ~/.bashrc
fi

# 4. Install SuperCollider
if ! command_exists sclang ; then
    echo "Installing SuperCollider..."
    brew install --cask supercollider
    echo "export PATH=\"$PATH\"" >> ~/.bashrc
else
    echo "SuperCollider already installed."
    echo "export PATH=\"$PATH\"" >> ~/.bashrc
fi

# 5. Install necessary Quarks for TidalCycles
echo "Installing TidalCycles Quarks..."
sclang -D <<EOL
Quarks.install("https://github.com/tidalcycles/Dirt-Samples")
s.waitForBoot {
    "Quarks installed".postln;
};
EOL



echo "Setup complete! Please restart your terminal and enjoy TidalCycles."
