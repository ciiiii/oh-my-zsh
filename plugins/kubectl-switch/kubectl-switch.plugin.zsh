kubectl-switch-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER =~ "apply" ]]; then
        LBUFFER="${LBUFFER//apply/delete}"
        elif [[ $BUFFER =~ "delete" ]]; then
        LBUFFER="${LBUFFER//delete/apply}"
    fi
    if [[ $BUFFER =~ "kg " ]]; then
        LBUFFER="${LBUFFER//kg/kgw}"
        elif [[ $BUFFER =~ "kgw " ]]; then
        LBUFFER="${LBUFFER//kgw/kgy}"
        elif [[ $BUFFER =~ "kgy " ]]; then
        LBUFFER="${LBUFFER//kgy/kgj}"
        elif [[ $BUFFER =~ "kgj " ]]; then
        LBUFFER="${LBUFFER//kgj/kg}"
    fi
}

zle -N kubectl-switch-command-line

bindkey "^e" kubectl-switch-command-line