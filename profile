# Load environment variables and startup programs that are not specific to any shell.
# This file is for login shells, which is what macOS creates for every new Terminal.app window. On Linux, new terminal windows are non-login.
# Everything in here should be suitable to non-interactive (no output). For interactive config, put that in the specific shell.


if [ -d /usr/local/bin ] ; then
  # This test is only available in bash, ksh, zsh, etc.
  # see: http://mywiki.wooledge.org/BashGuide/Practices#Bash_Tests
  if [[ ":$PATH:" != *":/usr/local/bin:"* ]] ; then
    PATH="/usr/local/bin:$PATH"
  fi
fi

# brew bash-completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

if [ -d /usr/local/sbin ] ; then
  # This test is only available in bash, ksh, zsh, etc.
  # see: http://mywiki.wooledge.org/BashGuide/Practices#Bash_Tests
  if [[ ":$PATH:" != *":/usr/local/sbin:"* ]] ; then
    PATH="/usr/local/sbin:$PATH"
  fi
fi
