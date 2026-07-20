local g = vim.g
local keymap = vim.keymap

g.mapleader = " "

-- Do things without affecting the registers
keymap.set("n", "x", '"_x')
keymap.set("n", "<Leader>p", '"0p')
keymap.set("n", "<Leader>P", '"0P')
keymap.set("v", "<Leader>p", '"0p')
keymap.set("n", "<Leader>c", '"_c')
keymap.set("n", "<Leader>C", '"_C')
keymap.set("v", "<Leader>c", '"_c')
keymap.set("v", "<Leader>C", '"_C')
keymap.set("n", "<Leader>d", '"_d')
keymap.set("n", "<Leader>D", '"_D')
keymap.set("v", "<Leader>d", '"_d')
keymap.set("v", "<Leader>D", '"_D')

-- Disable continuations comments
keymap.set("n", "<Leader>o", "o<Esc>^Da")
keymap.set("n", "<Leader>O", "O<Esc>^Da")

-- Normal mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- Search
keymap.set("n", "nh", "<cmd>nohl<CR>", { desc = "Clear search highlights" })

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select entire file" })

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Save
keymap.set("n", "<leader>w", "<cmd>w<CR>")

-- Numbers
keymap.set("n", "+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "-", "<C-x>", { desc = "Decrement number" })

-- Window management
keymap.set("n", "ss", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "se", "<C-w>=", { desc = "Equalize window sizes" })
keymap.set("n", "sx", "<cmd>close<CR>", { desc = "Close current window" })

-- Move windows
keymap.set("n", "sh", "<C-w>h", { desc = "Go to left window" })
keymap.set("n", "sj", "<C-w>j", { desc = "Go to lower window" })
keymap.set("n", "sk", "<C-w>k", { desc = "Go to upper window" })
keymap.set("n", "sl", "<C-w>l", { desc = "Go to right window" })

-- Tabs
keymap.set("n", "te", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
keymap.set("n", "<Tab>", "<cmd>tabnext<CR>", { desc = "Go to next tab" })
keymap.set("n", "<S-Tab>", "<cmd>tabprevious<CR>", { desc = "Go to previous tab" })

-- Window resizing
keymap.set("n", "<Left>", "<cmd>vertical resize -5<CR>", { desc = "Decrease window width" })
keymap.set("n", "<Right>", "<cmd>vertical resize +5<CR>", { desc = "Increase window width" })
keymap.set("n", "<Up>", "<cmd>resize +5<CR>", { desc = "Increase window height" })
keymap.set("n", "<Down>", "<cmd>resize -5<CR>", { desc = "Decrease window height" })
