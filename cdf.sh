cdf() {
    local dir
    local curr_dir

    if [ -n "$2" ]; then
        curr_dir=$(realpath "$2")
    else
        curr_dir="."
    fi

    dir=$(find "$curr_dir" -type d 2> /dev/null | fzf +m --e --query "$1") && cd "$dir" || return
}
