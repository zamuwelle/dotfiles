return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup({})

			vim.keymap.set("n", "<C-\\>", function()
				require("Comment.api").toggle.linewise.current()
			end, { desc = "Smart comment" })

			vim.keymap.set("v", "<C-\\>", function()
				vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<ESC>", true, false, true), "nx", false)

				local start_line = vim.api.nvim_buf_get_mark(0, "<")[1]
				local end_line = vim.api.nvim_buf_get_mark(0, ">")[1]
				local line_count = math.abs(end_line - start_line) + 1

				if line_count > 1 then
					require("Comment.api").toggle.blockwise("V")
				else
					require("Comment.api").toggle.linewise("V")
				end
			end, { desc = "Smart comment" })
		end,
	},
}
