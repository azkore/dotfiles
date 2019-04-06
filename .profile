export PATH=~/bin:~/.local/bin:~/.nimble/bin:~/go/bin:$PATH
command -v docker-machine && echo aaa && eval $(docker-machine env default)
echo this is a login shell
