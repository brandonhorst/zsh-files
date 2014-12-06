function cd() {
  builtin cd $* && ls;
}

function muffliato() {
  /opt/local/bin/play -n synth brownnoise > /dev/null
}
