is_command() {
  command -v $1 &>/dev/null
}

if is_command bat; then
  export BAT_THEME=base16
  alias cat=batcat
fi

if is_command hx || is_command helix; then
  alias hx=helix
  export EDITOR=helix
  alias vim=hx
  alias nvim=hx
fi

if is_command btop; then
  alias top=btop
fi
