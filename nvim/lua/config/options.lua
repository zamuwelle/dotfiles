local opt = vim.opt
local g = vim.g

opt.termguicolors = true -- enable 24-bit RGB color in the TUI

opt.clipboard = "unnamedplus" -- use the clipboard as the unnamed register

opt.cursorline = true -- highlight the screen line of the cursor
opt.signcolumn = "yes" -- when and how to display the sign column

opt.number = true -- print the line number in front of each line
opt.relativenumber = true -- show relative line number in front of each line

opt.ignorecase = true -- ignore case in search patterns
opt.smartcase = true -- no ignore case when pattern has uppercase

opt.tabstop = 2 -- number of columns between two tab stops
opt.shiftwidth = 2 -- number of spaces to use for (auto)indent step

opt.splitright = true -- new window is put right of the current one
opt.splitbelow = true -- new window from split is below the current one

opt.writebackup = false -- make a backup before overwriting a file
opt.swapfile = false -- whether to use a swapfile for a buffer

opt.updatetime = 300 -- after this many milliseconds flush swap file
opt.timeoutlen = 500 -- time out time in milliseconds
opt.ttimeoutlen = 50 -- time out time for key codes in milliseconds

g.netrw_liststyle = 3 -- netrw explore as tree
