function cd() {
  builtin cd $* && ls;
}

function muffliato() {
  play -n synth brownnoise > /dev/null
}

function backup-projects() {
  rsync -f ':- .gitignore' -f '- .git/' -a -v ~/Projects ~/Dropbox
}

function ql {
  (qlmanage -p "$1" >& /dev/null &)
}

function block {
  echo "127.0.0.1 $1" >> /etc/hosts
}

function unblock {
  egrep -v "127\\.0\\.0\\.1\\s+$1" /etc/hosts > /tmp/tmphosts
  cat /tmp/tmphosts > /etc/hosts
}

function npmjs {
  echo "https://npmjs.com/package/`npm view . name`" | xargs open
}

function github {
  git config --get remote.origin.url | xargs open
}
