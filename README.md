# Zamuwelle Dotfiles  

## Prerequisite
Make sure to install the following apps before installing my dotfiles:
- **VS Code**

	- Extensions: [VSCode Neovim](https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim)
- **Neovim**

### **Neovim**
- **LSP**:
    - `basedpyright`
    - `bashls`
    - `cssls`
    - `html`
    - `laravel_ls`
    - `lua_ls`
    - `marksman`
    - `phpactor`
    - `powershell_es`
    - `ts_ls`

- **Treesitter (requires `tree-sitter-cli`)**:
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

- **Conform**:
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

### Linux
Clipboard support:
- X11: `xclip`
- Wayland: `wl-clipboard`
### Windows
Clipboard support:
- `win2yank.exe` already handles that.

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
