watch-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == "watch -n 1"\ * ]]; then
        LBUFFER="${LBUFFER#watch -n 1 \'}"
        LBUFFER="${LBUFFER%\'}"
    else
        LBUFFER="watch -n 1 '$LBUFFER'"
    fi
}

zle -N watch-command-line

bindkey "^a" watch-command-line
