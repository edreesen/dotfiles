## smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

## file rename magick
bindkey "^[m" copy-prev-shell-word

## jobs
setopt long_list_jobs

## pager
export PAGER=less
export LC_CTYPE=$LANG

## editor
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# 10ms for key sequences
KEYTIMEOUT=1
