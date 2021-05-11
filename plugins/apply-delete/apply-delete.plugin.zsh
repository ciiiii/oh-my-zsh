apply-delete-switch-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER =~ "apply" ]]; then
        LBUFFER="${LBUFFER//apply/delete}"
    elif [[ $BUFFER =~ "delete" ]]; then
        LBUFFER="${LBUFFER//delete/apply}"
    fi
}

zle -N apply-delete-switch-command-line

bindkey "^e" apply-delete-switch-command-line