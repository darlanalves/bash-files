if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

get_directory_name() {
    basename "$(pwd)"
}

PS1='${debian_chroot:+($debian_chroot)}\[\033[90;02m\] [\D{%a, %d %H:%I}] \[\033[01;32m\]\u\[\033[00m\] $(parse_git_branch) on \[\033[01;34m\]$(get_directory_name)\[\033[00m\] λ '

