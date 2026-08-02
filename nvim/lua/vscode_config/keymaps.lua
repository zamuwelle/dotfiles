local g = vim.g
local keymap = vim.keymap
local vscode = require("vscode")

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

-- Search
keymap.set("n", "nh", "<cmd>nohl<CR>", { desc = "Clear search highlights" })

-- Select all
keymap.set("n", "<C-a>", "ggVG", { desc = "Select entire file" })

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Rename
vim.keymap.set("n", "<leader>ra", ":%s/\\<<C-r><C-w>\\>//g<Left><Left>", { desc = "Rename word under cursor" })

-- Numbers
keymap.set("n", "+", "<C-a>", { desc = "Increment number"})
keymap.set("n", "-", "<C-x>", { desc = "Decrement number"})

-- Window management
keymap.set("n", "ss", function() vscode.action("workbench.action.splitEditorDown") end, { desc = "Split window down" })
keymap.set("n", "sv", function() vscode.action("workbench.action.splitEditor") end, { desc = "Split window" })
keymap.set("n", "se", function() vscode.action("workbench.action.evenEditorWidths") end, { desc = "Equalize window sizes" })
keymap.set("n", "sx", function() vscode.action("workbench.action.closeActiveEditor") end, { desc = "Close current window" })

-- Move windows
keymap.set("n", "sh", function() vscode.action("workbench.action.navigateLeft") end, { desc = "Go to left window" })
keymap.set("n", "sj", function() vscode.action("workbench.action.navigateDown") end, { desc = "Go to lower window" })
keymap.set("n", "sk", function() vscode.action("workbench.action.navigateUp") end, { desc = "Go to upper window" })
keymap.set("n", "sl", function() vscode.action("workbench.action.navigateRight") end, { desc = "Go to right window" })

-- Tabs
keymap.set("n", "te", function() vscode.action("workbench.action.files.newUntitledFile") end, { desc = "Open new tab" })
keymap.set("n", "tx", function() vscode.action("workbench.action.closeActiveEditor") end, { desc = "Close current tab" })
keymap.set("n", "<Tab>", function() vscode.action("workbench.action.nextEditor") end, { desc = "Next tab" })
keymap.set("n", "<S-Tab>", function() vscode.action("workbench.action.previousEditor") end, { desc = "Previous tab" })

-- Window resizing
keymap.set("n", "<Left>", function() vscode.action("workbench.action.decreaseViewWidth") end, { desc = "Decrease window width" })
keymap.set("n", "<Right>", function() vscode.action("workbench.action.increaseViewWidth") end, { desc = "Increase window width" })
keymap.set("n", "<Up>", function() vscode.action("workbench.action.increaseViewHeight") end, { desc = "Increase window height" })
keymap.set("n", "<Down>", function() vscode.action("workbench.action.decreaseViewHeight") end, { desc = "Decrease window height" })

-- Similar to telescope.nvim
keymap.set("n", "<leader>ff", function() vscode.action("workbench.action.quickOpen") end, { desc = "Find files" })
keymap.set("n", "<leader>fg", function() vscode.action("workbench.action.findInFiles") end, { desc = "Live grep" })
keymap.set("n", "<leader>fb", function() vscode.action("workbench.action.showAllEditors") end, { desc = "Find buffers" })
keymap.set("n", "<leader>fr", function() vscode.action("workbench.action.openRecent") end, { desc = "Recent files" })
