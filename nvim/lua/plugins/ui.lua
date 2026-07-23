return {
	{
		"folke/which-key.nvim",
		opts = {
			triggers = { "<leader>" },
			spec = {
				{ "<leader>c", group = "Change" },
				{ "<leader>d", group = "Delete" },
				{ "<leader>e", desc = "Show diagnostic" },
				{ "<leader>o", group = "Open line" },
				{ "<leader>p", group = "Paste" },
				{ "<leader>q", desc = "Diagnostics list" },
				{ "<leader>r", group = "Refactor" },
				{ "<leader>w", desc = "Save file" },
			},
		},
	},
}
