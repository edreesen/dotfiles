export ZSH=~/.zsh

# Source git zshrc prompt style
source ~/dotfiles/zsh/lib/zsh-git-prompt/zshrc.sh

# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

# Load and run compinit
autoload -U compinit
compinit -i

#alias vim="stty stop '' -ixoff; vim"
precmd() { print "" }

export TERM='xterm-256color'
