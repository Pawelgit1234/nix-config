#!/usr/bin/env bash
set -euo pipefail

# inspired by: https://github.com/ThePrimeagen/.dotfiles/blob/master/bin/.local/scripts/tmux-sessionizer

projects=(
    "/run/media/jim/Samsung Evo"
    "/run/media/jim/Samsung Evo/projects"
)

if [[ $# -eq 1 ]]; then
    selected=$1
else
    selected=$(
        find "${projects[@]}" \
            -mindepth 1 -maxdepth 1 -type d 2>/dev/null |
        sort -u |
        fzf
    ) || true
fi

[[ -n "${selected:-}" ]] || exit 0

selected=$(realpath "$selected")
selected_name=$(basename "$selected" | tr '.' '_')

if ! tmux has-session -t "=$selected_name" 2>/dev/null; then
    # Window 1: Neovim.
    tmux new-session -d \
        -s "$selected_name" \
        -c "$selected" \
        -n "nvim" \
        "nvim"

    # Window 2: zsh.
    tmux new-window \
        -d \
        -t "=$selected_name" \
        -n "zsh" \
        -c "$selected"
fi

# Connect to the selected session.
if [[ -n "${TMUX:-}" ]]; then
    exec tmux switch-client -t "=$selected_name"
else
    exec tmux attach-session -t "=$selected_name"
fi
