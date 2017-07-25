function cd() {
  builtin cd $* && ls;
}

function muffliato() {
  play -n synth brownnoise > /dev/null
}

function backup-projects() {
  rsync -d --delete-excluded -f ':- .gitignore' -f '- .git/' -a -v ~/Projects ~/Dropbox
}

function ql {
  (qlmanage -p "$1" >& /dev/null &)
}

function block {
  echo "127.0.0.1 $1" >> /etc/hosts
  echo "127.0.0.1 www.$1" >> /etc/hosts
}

function unblock {
  egrep -v "127\\.0\\.0\\.1\\s+$1" /etc/hosts > /tmp/tmphosts
  egrep -v "127\\.0\\.0\\.1\\s+www\.$1" /tmp/tmphosts > /tmp/tmphosts1
  cat /tmp/tmphosts1 > /etc/hosts
}

function npmjs {
  echo "https://npmjs.com/package/`npm view . name`" | xargs open
}

function github {
  git config --get remote.origin.url | xargs open
}

function tmpclone {
  builtin cd /tmp && git clone $1 && clear && cd $(basename $1 .git)
}

function brazil-reload {
  brazil-package-cache disable_edge_cache
  brazil-package-cache enable_edge_cache
  brazil-package-cache start
}
