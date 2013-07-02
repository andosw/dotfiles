# Antigen is "package manager" for zsh
export ANTIGEN_DEFAULT_REPO_URL=https://github.com/sheerun/oh-my-zsh.git
source ~/.gitmodules/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOB
  rbenv
  git-extras
  zsh-users/zsh-syntax-highlighting
  zsh-users/zaw
  zsh-users/zsh-history-substring-search
  ~/.zsh --no-local-clone
EOB

antigen theme sheerun/oh-my-zsh-powerline-theme powerline

antigen apply

autoload -U zmv
:only() { 
    ps -ao pid,ppid,comm= | \
    awk '!'"/^$$|ack/&&/$(basename $SHELL)"'$/{print $2}' | \
    xargs kill
}

if [[ "$SHELL" == *zsh ]]; then
  zle -N :only
  # bindkey "^Wo" :only
  # bindkey "^W^O" :only
fi


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export LANG="en_GB.UTF-8"
