alias du='du -h'
alias df='df -h'
alias '?'='du --max-depth 1'

alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'

alias les='less --shift=10 --hilite-unread --chop-long-lines'
alias running='ps -ef | grep ${USER}'
alias prev='history | grep '

# show manually installed packages
# http://askubuntu.com/questions/2389/generating-list-of-manually-installed-packages-and-querying-individual-packages
alias installed="comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)"
