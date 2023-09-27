alias vim="nvim"
alias vimdiff="nvim -d"
alias ll="ls -l --color=auto"
alias snip="maim -s | xclip -selection clipboard -t image/png"

case "$OSTYPE" in
  linux*)
    # Not using kitty on WSL
    if [[ ! $(grep -i microsoft /proc/version) ]]; then
      alias ssh="kitty +kitten ssh"
    fi
  ;;
esac
