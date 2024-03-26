is_command() {
  command -v $1 &>/dev/null
}

# On arch, the package is called bat
if is_command bat; then
  export BAT_THEME=base16
  alias cat=bat
fi

# but on debian, the package is called batcat
if is_command batcat; then
  export BAT_THEME=base16
  alias cat=batcat
fi
# dont ask me why ¯\_(ツ)_/¯

if is_command hx || is_command helix; then
  alias hx=helix
  export EDITOR=helix
  alias vim=hx
  alias nvim=hx
  if setopt | grep "autocd" &>/dev/null; then
    alias -s {rs,py,sh}=helix
  fi
fi

if is_command btop; then
  alias top=btop
fi

if is_command eza; then
  alias ls='eza -1AF --icons --group-directories-first --git-ignore --ignore-glob=".git*"'
  alias lsg='eza -1AF --icons --group-directories-first'
  alias tree='eza -Tl'
else
  alias ls='ls -A1F --color=always --group-directories-first'
fi
