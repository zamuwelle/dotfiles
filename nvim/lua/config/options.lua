local opt = vim.opt
local g = vim.g

opt.termguicolors = true -- enable 24-bit RGB color in the TUI

opt.number = true -- print the line number in front of each line
opt.relativenumber = true -- show relative line number in front of each line
opt.cursorline = true -- highlight the screen line of the cursor
opt.scrolloff = 10 -- minimum nr. of lines above and below cursor
opt.sidescrolloff = 10 -- min. nr. of columns to left and right of cursor

opt.tabstop = 2 -- number of columns between two tab stops
opt.shiftwidth = 2 -- number of spaces to use for (auto)indent step
opt.softtabstop = 2 -- number of columns between two soft tab stops

opt.ignorecase = true -- ignore case in search patterns
opt.smartcase = true -- no ignore case when pattern has uppercase

opt.signcolumn = "yes" -- when and how to display the sign column
opt.colorcolumn = "80" -- columns to highlight
opt.showmatch = true -- briefly jump to matching bracket if insert one
opt.matchtime = 1 -- tenths of a second to show matching paren
opt.completeopt = "menu,menuone,noselect"

opt.writebackup = false -- make a backup before overwriting a file
opt.swapfile = false -- whether to use a swapfile for a buffer
opt.updatetime = 300 -- after this many milliseconds flush swap file
opt.timeoutlen = 500 -- time out time in milliseconds

opt.clipboard = "unnamedplus" -- use the clipboard as the unnamed register

opt.splitright = true -- new window is put right of the current one
opt.splitbelow = true -- new window from split is below the current one

g.netrw_liststyle = 3 -- tree style listing
