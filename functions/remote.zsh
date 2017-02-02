function cd() {
  builtin cd $* && ls;
}

function tmpclone {
  builtin cd /tmp && git clone $1 && clear && cd $(basename $1 .git)
}
