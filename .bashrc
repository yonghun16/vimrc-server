# shellcheck shell=bash

alias cp="cp -i"
alias mv='mv -i'
alias rm="trash"
alias vi="vim"
alias t="tmux attach -t main || tmux new -s main"
if [ -n "$TMUX" ]; then
    alias exit="tmux detach"
    export IGNOREEOF=10 # Ctrl+d를 10번 연타해야 꺼짐 (실수 방지)
fi
