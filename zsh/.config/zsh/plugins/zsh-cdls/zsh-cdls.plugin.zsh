cd_do_ls() {
  emulate -L zsh
  clear
  ls
}

add-zsh-hook chpwd cd_do_ls

alias clear="clear; ls"

rm() {
  command rm "$@"
  clear
}

rmdir() {
  command rmdir "$@"
  clear
}

mkdir() {
  command mkdir "$@"
  clear
}

# start the terminal by ls
ls
