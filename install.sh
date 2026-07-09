current_dir="$(pwd)"
vscode_dir="$HOME/.config/Code"

cp -f "$current_dir/Code/settings.json" "$vscode_dir"

rm -f -r $current_dir