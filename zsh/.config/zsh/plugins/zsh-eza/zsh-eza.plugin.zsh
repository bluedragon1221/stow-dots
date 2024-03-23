# -*- mode: zsh; sh-indentation: 2; indent-tabs-mode: nil; sh-basic-offset: 2; -*-
# vim: ft=zsh sw=2 ts=2 et
#
# Copyright (c) 2022 Salvydas Lukosius

if [[ $TERM == 'dumb' ]]; then
  return 1
fi

builtin emulate -L zsh ${=${options[xtrace]:#off}:+-o xtrace}
builtin setopt extended_glob warn_create_global typeset_silent

if (( $+commands[eza] )); then
  typeset enable_autocd=0
  typeset -ag eza_params

  alias ls='eza -1AF --icons --group-directories-first --git-ignore --ignore-glob=".git*"'
  alias tree='eza -Tl'

  [[ "$AUTOCD" = <-> ]] && enable_autocd="$AUTOCD"
  if [[ "$enable_autocd" == "1" ]]; then
    # Function for cd auto list directories
    →auto-eza() { command eza $eza_params; }
    [[ $chpwd_functions[(r)→auto-eza] == →auto-eza ]] || chpwd_functions=( →auto-eza $chpwd_functions )
  fi
else
  alias ls='ls -A1F --color=always --group-directories-first'
  print "Please install eza before using this plugin." >&2
  return 1
fi

return 0
