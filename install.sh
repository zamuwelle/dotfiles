current_dir="$(dirname "$(dirname "$(readlink -f "$0")")")/dotfiles"
vscode_dir="$HOME/.config/Code/User"

mkdir -p "$vcode_dir"

cp -f "$current_dir/Code/settings.json" "$vscode_dir"

rm -f -r $current_dir
