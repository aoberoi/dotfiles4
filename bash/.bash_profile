# All the real config happens in ~/.bashrc and ~/.profile, just source those.
# The difference is the former is for bash-specific config, while the latter is for non-shell-specific config
# When does this file not get used? For non-interactive usage (scripting).

# Source ~/.profile for environment variables and startup programs
# that are not specific to bash
if [ -f "$HOME/.profile" ]; then
  source "$HOME/.profile"
fi

# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
    source "$HOME/.bashrc"
fi
