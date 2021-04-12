# See: https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Source ~/.profile for environment variables and startup programs
# that are not specific to zsh
if [ -f "$HOME/.profile" ]; then
  source "$HOME/.profile"
fi
