function cd() {
  builtin cd $* && ls;
}

function muffliato() {
  play -n synth brownnoise > /dev/null
}
