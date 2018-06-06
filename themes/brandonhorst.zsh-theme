google3_prompt_info() {
  if [[ $PWD =~ '/google/src/cloud/[^/]+/(.+)/google3(.*)' ]]; then
    # Use CitC client names as window titles in screen/tmux
    print -n "\ek${match[1]}\e\\"

    print -r -- "%F{magenta}$match[1]:%F{green}//${match[2]#/}"
  else
    print -r -- "%F{green}%c"
  fi
}

setopt prompt_subst  # enable command substitution (and other expansions) in PROMPT

PROMPT='%{$fg[magenta]%}$(google3_prompt_info)%{$fg[yellow]%}> %{$reset_color%}'
