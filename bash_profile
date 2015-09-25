parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

alias vi='vim'
alias ls='ls -l'

export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
export PS1='[ \[\e[0;34m\]\u\[\e[m\]@\[\e[0;32m\]\h\[\e[m\] \[\e[0;31m\]$(parse_git_branch)\[\e[m\] \W ] $ '
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/Users/dennisme/Desktop/terraform

export PATH=$PATH:/usr/local/opt/go/libexec/bin

#Golang
#export GOPATH=/Users/dennisme/Desktop/goeg
export GOPATH=/Users/dennisme/Documents/Projects/go

#Flush DNS
alias flushdns='sudo killall -HUP mDNSResponder'
