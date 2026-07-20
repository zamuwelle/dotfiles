return {
	"nvim-telescope/telescope.nvim",

	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	opts = {
		defaults = {
			layout_strategy = "horizontal",
			sorting_strategy = "ascending",

			layout_config = {
				prompt_position = "top",
			},

			mappings = {
				i = {
					["<C-j>"] = require("telescope.actions").move_selection_next,
					["<C-k>"] = require("telescope.actions").move_selection_previous,
					["<Esc>"] = require("telescope.actions").close,
				},
			},
		},

		pickers = {
			find_files = {
				hidden = true,
			},
		},
	},

	config = function(_, opts)
		require("telescope").setup(opts)

		local builtin = require("telescope.builtin")
		local keymap = vim.keymap

		keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
		keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
		keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
		keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
		keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Recent files" })

		-- LSP
		keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, { desc = "Document symbols" })
		keymap.set("n", "<leader>fS", builtin.lsp_workspace_symbols, { desc = "Workspace symbols" })

		-- Diagnostics
		keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Diagnostics" })

		-- Commands
		keymap.set("n", "<leader>fc", builtin.commands, { desc = "Commands" })
	end,
}
