# make oh-my-zsh the base for zsh configuration
# just disable auto update as it's done by dotfiles script
ZSH="$HOME/.dotfiles/libs/oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
plugins=(bundler gem git git-flow lol nanoc nyan osx rails3 sprunge vim)
source $ZSH/oh-my-zsh.sh

# set locale variables to en_US and UTF-8
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="C"

# ensure /usr/local/bin has the highest precedence
export PATH=/usr/local/bin:$PATH

# disable autocorrection as it's extremely annoying
unsetopt correct_all

# make autocompletion faster by caching and prefix-only matching
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*:(all-|)files' ignored-patterns '(|*/)CVS'
zstyle ':completion:*:cd:*' ignored-patterns '(*/)#CVS'
zstyle -e ':completion:*:approximate:*' \
        max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'
zstyle ':completion:*:functions' ignored-patterns '_*'

# highlight prefixes on autocompletion
zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)*==34=34}:${(s.:.)LS_COLORS}")';
zstyle ':completion:*' squeeze-slashes true

# make rbenv init faster by disabling auto rehash
eval "$(rbenv init - --no-rehash)"

# set cdpath to contents of ~/.dotfiles/conf/cdpath
cdpath=( ${${~$(cat ~/.dotfiles/conf/cdpath | grep -v '^#' | grep -v '^$')}} )
