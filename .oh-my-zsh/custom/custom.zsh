export PATH="$PATH:$HOME/.rd/bin:$HOME/.pub-cache/bin:$(go env GOPATH)/bin"

export CHROME_EXECUTABLE="/usr/bin/chromium"
export LIBVIRT_DEFAULT_URI="qemu:///system"

# Aliases
alias vim="nvim"
alias vimdiff="nvim -d"
alias ll="ls -l --color=auto"
alias snip="maim -s | xclip -selection clipboard -t image/png"
alias ssh="kitty +kitten ssh"
