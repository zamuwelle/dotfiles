current_dir="$(pwd)"
vscode_dir="$HOME/.config/Code/"

cp -f "$vscode_dir" "$current_dir"

rm -f -r $current_dir