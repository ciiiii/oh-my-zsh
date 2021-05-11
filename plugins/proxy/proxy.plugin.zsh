proxy-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == "http_proxy=http://127.0.0.1:1087 https_proxy=http://127.0.0.1:1087"\ * ]]; then
        LBUFFER="${LBUFFER#http_proxy=http://127.0.0.1\:1087 https_proxy=http://127.0.0.1:1087 }"
    else
        LBUFFER="http_proxy=http://127.0.0.1:1087 https_proxy=http://127.0.0.1:1087 $LBUFFER"
    fi
}

zle -N proxy-command-line

bindkey "^z" proxy-command-line
