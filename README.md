# Zamuwelle Dotfiles  

## Prerequisite
Make sure to install the following apps before installing my dotfiles:
- **VS Code**

	- Extensions: [VSCode Neovim](https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim)
- **Neovim**

### Linux
Clipboard support:
- X11: `xclip`
- Wayland: `wl-clipboard`
### Windows
Clipboard support:
- `win2yank.exe` already handles that.

## **Neovim**

<details>
<summary><b>LSP</b></summary>

- `basedpyright`
- `bashls`
- `cssls`
- `html`
- `laravel_ls`
- `lua_ls`
- `marksman`
- `phpactor`
- `powershell_es`
- `tailwindcss`
- `ts_ls`

</details>

<details>
<summary><b>Treesitter</b></summary>

- `bash`
- `blade`
- `css`
- `html`
- `javascript`
- `lua`
- `markdown`
- `markdown_inline`
- `php`
- `php_only`
- `powershell`
- `python`
- `tsx`
- `typescript`
- `vim`
- `vimdoc`

</details>

<details>
<summary><b>Conform Formatter</b></summary>

- `blade` → `blade-formatter`
- `css` → `prettierd`
- `html` → `prettierd`
- `javascript` → `prettierd`
- `javascriptreact` → `prettierd`
- `lua` → `stylua`
- `markdown` → `prettierd`
- `php` → `pint`
- `ps1` → `pwshfmt`
- `python` → `black`
- `sh` → `shfmt`
- `typescript` → `prettierd`
- `typescriptreact` → `prettierd`

</details>

<details>
<summary><b>Plugins</b></summary>

- [`autopairs.lua`](https://github.com/windwp/nvim-autopairs)
- [`blink.lua`](https://github.com/saghen/blink.cmp)
- [`colorscheme.lua`](https://github.com/folke/tokyonight.nvim)
- [`conform.lua`](https://github.com/stevearc/conform.nvim)
- [`gitsigns.lua`](https://github.com/lewis6991/gitsigns.nvim)
- [`lspconfig.lua`](https://github.com/neovim/nvim-lspconfig)
- [`mason-lspconfig.lua`](https://github.com/williamboman/mason-lspconfig.nvim)
- [`mason.lua`](https://github.com/williamboman/mason.nvim)
- [`oil-git.lua`](https://github.com/malewicz1337/oil-git.nvim)
- [`oil.lua`](https://github.com/stevearc/oil.nvim)
- [`telescope.lua`](https://github.com/nvim-telescope/telescope.nvim)
- [`tmux-navigator.lua`](https://github.com/christoomey/vim-tmux-navigator)
- [`treesitter.lua`](https://github.com/nvim-treesitter/nvim-treesitter)

</details>

## Installation

For Linux
```bash
git clone https://github.com/zamuwelle/dotfiles.git; chmod +x dotfiles/install.sh; ./dotfiles/install.sh
```
For Windows
```bash
git clone https://github.com/zamuwelle/dotfiles.git & cmd /c dotfiles\install.bat
```

## Enjoy 🔥
