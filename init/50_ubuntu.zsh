# Ubuntu-only stuff. Abort if not Ubuntu.
[[ "$(cat /etc/issue 2> /dev/null)" =~ Ubuntu ]] || return 1

cat /etc/passwd | grep $USER | grep zsh >& /dev/null
if [ $? -ne 0 ]; then
  echo "Changing your shell to zsh..."
  sudo chsh -s $(which zsh)
fi
