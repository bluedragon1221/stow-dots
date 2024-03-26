plug() {
    if [[ -d $ZDOTDIR/plugins/$1 ]]; then
	source $ZDOTDIR/plugins/$1/$1.plugin.zsh 
    else
	echo "You need to manually install $1"
    fi
}

setopt extendedglob

plug zsh-package-check
autoload -U compinit; compinit

# Completion
plug zsh-autosuggestions

plug zsh-autocomplete
ALWAYS_SHOW_HISTORY=0
FANCY_HISTORY_SEARCH=0
plug completion-settings

alias wget="wget --no-hsts"
LESSHISTSIZE=0

# CD
setopt autocd
plug zsh-cdls

# PROMPT
CURSOR_BEAM=1
DIR_HASHES=1
GIT_STATUS=0
PROMPT_HOSTNAME=1
plug zsh-lambda-prompt
prompt lambda

# HISTORY
HISTFILE=$XDG_STATE_HOME/zsh_history
HISTSIZE=1000
SAVEHIST=10000
setopt appendhistory
setopt HIST_IGNORE_ALL_DUPS

plug zsh-broot
plug zsh-rust
plug fast-syntax-highlighting

typeset -aU path # fix duplicate path entries
