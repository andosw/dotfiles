# ensure /usr/local/bin has the highest precedence
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:$HOME/.dotfiles/libs/git-submodule-tools
export PATH=$PATH:$HOME/.dotfiles/lib/git-extras/bin

if [[ "$OSTYPE" =~ ^darwin ]]; then
    export PATH="$(brew --prefix coreutils)/libexec/gnubin":$PATH
fi
