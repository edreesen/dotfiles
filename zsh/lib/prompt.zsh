# autoload -U add-zsh-hook
autoload -Uz vcs_info

# # enable VCS systems you use
#zstyle ':vcs_info:*' enable git svn
#zstyle ':vcs_info:*:prompt:*' check-for-changes true

setopt prompt_subst
autoload -U promptinit
promptinit


# Look at http://zsh.sourceforge.net/Doc/Release/User-Contributions.html#Version-Control-Information
# for mor options
#zstyle ':vcs_info:*' check-for-changes true
#zstyle ':vcs_info:*' unstagedstr '*'   # display this when there are unstaged changes
#zstyle ':vcs_info:*' stagedstr '+'  # display this when there are staged changes
#zstyle ':vcs_info:*' actionformats '[%b%|%a%c%u%]%f'
#zstyle ':vcs_info:*' formats ':%b%c%u%f'

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function prompt_char {
git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    echo '○'
}

#PROMPT='%B%F{red}%n@%m%f%F{yellow}[%D{%L:%M:%S}]%f:%F{blue}${${(%):-%~}}%f$ %b'

#zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

precmd () { vcs_info }
PROMPT='[%D{%K:%M:%S} - %{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info) $(prompt_char)]
$:'

TMOUT=1

TRAPALRM() {
    zle reset-prompt
}

#PROMPT='[%n@%m %~${vcs_info_msg_0_}] %{$reset_color%}
#$:'
