# autoload -U add-zsh-hook
autoload -Uz vcs_info

# # enable VCS systems you use
#zstyle ':vcs_info:*' enable git svn
#zstyle ':vcs_info:*:prompt:*' check-for-changes true

setopt prompt_subst
autoload -U promptinit
promptinit

precmd () { vcs_info }
PROMPT='[%D{%K:%M:%S} - %{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}$(hostname -f)%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_super_status)]
$: '

TRAPALRM() {
    zle reset-prompt
}

