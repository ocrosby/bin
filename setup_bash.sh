#!/bin/bash

# Directory where the scripts will be installed
INSTALL_DIR="$HOME/bin"

# Clone the repository if not already present
if [ ! -d "$INSTALL_DIR" ]; then
    echo "Cloning the repository to $INSTALL_DIR..."
    git clone https://github.com/ocrosby/bin.git "$INSTALL_DIR"
else
    echo "The repository is already cloned in $INSTALL_DIR."
fi

# Update the PATH variable to include the new directories
if [[ ":$PATH:" != *":$INSTALL_DIR/git:"* ]]; then
    echo "Adding $INSTALL_DIR/git to the PATH..."
    echo 'export PATH="$INSTALL_DIR/git:$PATH"' >> ~/.bashrc
fi

if [[ ":$PATH:" != *":$INSTALL_DIR/conventional:"* ]]; then
    echo "Adding $INSTALL_DIR/conventional to the PATH..."
    echo 'export PATH="$INSTALL_DIR/conventional:$PATH"' >> ~/.bashrc
fi

if [[ ":$PATH:" != *":$INSTALL_DIR/docker:"* ]]; then
    echo "Adding $INSTALL_DIR/docker to the PATH..."
    echo 'export PATH="$INSTALL_DIR/docker:$PATH"' >> ~/.bashrc
fi

# Reload the shell configuration to apply changes
source ~/.bashrc

echo "Setup completed. You can now use the scripts."

