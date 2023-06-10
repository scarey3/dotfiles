alias vim="nvim"
alias vimdiff="nvim -d"
alias ll="ls -l --color=auto"
alias snip="maim -s | xclip -selection clipboard -t image/png"

# Not using kitty on Windows
if [[ ! $(grep -i microsoft /proc/version) ]]; then
    alias ssh="kitty +kitten ssh"
fi
