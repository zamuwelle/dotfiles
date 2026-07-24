local opt = vim.opt
local g = vim.g
local cmd = vim.cmd

g.python_recommended_style = 0

cmd.colorscheme("habamax") -- load a specific color scheme
opt.termguicolors = true -- enable 24-bit RGB color in the TUI
opt.number = true -- print the line number in front of each line
opt.relativenumber = true -- show relative line number in front of each line
opt.cursorline = true -- highlight the screen line of the cursor
opt.signcolumn = "yes" -- when and how to display the sign column
opt.colorcolumn = "80" -- columns to highlight

-- Scrolling
opt.scrolloff = 10 -- minimum nr. of lines above and below cursor
opt.sidescrolloff = 10 -- min. nr. of columns to left and right of cursor

-- Indentation
opt.tabstop = 2 -- number of columns between two tab stops
opt.shiftwidth = 2 -- number of spaces to use for (auto)indent step
opt.softtabstop = 2 -- number of columns between two soft tab stops
opt.smartindent = true -- smart autoindenting for C programs
opt.autoindent = true -- copy indent from current line (default: on)

-- Search
opt.ignorecase = true -- ignore case in search patterns
opt.smartcase = true -- no ignore case when pattern has uppercase
opt.hlsearch = true -- highlight matches with last search pattern (default: on)
opt.incsearch = true -- highlight match while typing search pattern (default: on)

-- Matching
opt.showmatch = true -- briefly jump to matching bracket if insert one
opt.matchtime = 1 -- tenths of a second to show matching paren

-- Completion
opt.completeopt = "menu,menuone,noselect" -- options for Insert mode completion

-- Files
opt.writebackup = false -- make a backup before overwriting a file
opt.swapfile = false -- whether to use a swapfile for a buffer
opt.fixendofline = false -- make sure last line in file has
opt.endofline = false -- write for last line in file
opt.undofile = true -- save undo information in a file

-- Performance
opt.updatetime = 300 -- after this many milliseconds flush swap file
opt.timeoutlen = 500 -- time out time in milliseconds

-- Behavior
opt.wrap = false -- wrap long lines and continue on the next line
opt.mouse = "a" -- enable the use of mouse clicks
opt.confirm = true -- quit, write, etc., asking about unsaved changes or read-only files

-- Clipboard
opt.clipboard:append("unnamedplus") -- use the clipboard as the unnamed register

-- Windows
opt.splitright = true -- new window is put right of the current one
opt.splitbelow = true -- new window from split is below the current one

-- File Explorer
g.netrw_liststyle = 3 -- tree style listing