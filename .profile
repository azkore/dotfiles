[ -x /home/linuxbrew/.linuxbrew/bin/brew ] &&  eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
export PATH=~/bin:~/.local/bin:~/.nimble/bin:~/go/bin:$PATH
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
#command -v docker-machine && eval $(docker-machine env default)
export EDITOR=vim
echo this is a login shell
test -f ~/.profile.${HOSTNAME} && source ~/.profile.${HOSTNAME}

export CDPATH=~/bf/sre
