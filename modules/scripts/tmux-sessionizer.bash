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

if [[ -z "${TMUX:-}" ]]; then
    if tmux has-session -t "=$selected_name" 2>/dev/null; then
        exec tmux attach-session -t "=$selected_name"
    else
        exec tmux new-session -s "$selected_name" -c "$selected"
    fi
fi

if ! tmux has-session -t "=$selected_name" 2>/dev/null; then
    tmux new-session -d -s "$selected_name" -c "$selected"
fi

exec tmux switch-client -t "=$selected_name"

