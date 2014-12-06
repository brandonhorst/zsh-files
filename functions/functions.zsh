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
