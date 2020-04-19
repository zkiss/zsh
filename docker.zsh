# https://docs.docker.com/engine/security/rootless/#install
#export PATH=/home/zoltan/bin:$PATH
export DOCKER_HOST=unix:///run/user/1000/docker.sock

alias docker_start='systemctl --user start docker'
alias docker_stop='systemctl --user stop docker'
