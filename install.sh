current_dir="$(dirname "$(dirname "$(readlink -f "$0")")")/dotfiles"
vscode_dir="$HOME/.config/Code/User"
neovim_dir="$HOME/.config/nvim"

mkdir -p "$vcode_dir"
mkdir -p "$neovim_dir"

cp -f -r "$current_dir/Code/*" "$vscode_dir"
cp -f -r "$current_dir/nvim/*" "$neovim_dir"

rm -f -r $current_dir