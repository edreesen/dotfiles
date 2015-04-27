export ZSH=~/.zsh

# Source git zshrc prompt style
source ~/dotfiles/zsh/lib/zsh-git-prompt/zshrc.sh

# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

# Load and run compinit
autoload -U compinit
compinit -i

# this is a fix for vi in OS X
#alias vim="stty stop '' -ixoff; vim"

# this adds an extra line break before every new prompt
precmd() { print "" }

# set default editor to vim
export EDITOR="vim"

export TERM='xterm-256color'

if test "$TERM" != linux; then
 # show current command, directory, and user in terminal title
 precmd() { print -Pn "\e]2;$0 (%~) %n@%m\a" 2>/dev/null }
 preexec() { print -Pn "\e]2;$1 (%~) %n@%m\a" 2>/dev/null }
fi

# avoid most common annoying correction:
alias sudo='nocorrect sudo'
