#!/usr/bin/env zsh 

#!/bin/zsh

# Define the function to add directories to PATH
add_to_path() {
  local dir="$1"
  if [[ -d "$dir" && :$PATH: != *":$dir:"* ]]; then
    export PATH="$dir:$PATH"
    echo "Added $dir to PATH."
  else
    echo "Directory $dir is not valid or already in PATH."
  fi
}

# Add your directories to the PATH
add_to_path "$HOME/bin/git"
add_to_path "$HOME/bin/conventional"
add_to_path "$HOME/bin/docker"
add_to_path "$HOME/bin/shell"
# Add more directories as needed

# Optionally, you can add any other setup commands here

echo "Setup completed. You can now use the scripts."

