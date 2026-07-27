return {
	{
	  "folke/which-key.nvim",
	  event = "VeryLazy",
	  opts = {},
	},
	{
	  'stevearc/oil.nvim',
	  lazy = false,
	
	  opts = {
	    delete_to_trash = true,
	    skip_confirm_for_simple_edits = true,
	
	    view_options = {
	      show_hidden = true,
	    },
	  },
	
	  keys = {
	    {
	      '-',
	      '<CMD>Oil<CR>',
	      desc = 'Open parent directory',
	    },
	  },
	
	  dependencies = {
	    { 'nvim-mini/mini.icons', opts = {} },
	  },
	},
	{
	  'lewis6991/gitsigns.nvim',
	  opts = {
	    on_attach = function(bufnr)
	      local gitsigns = require('gitsigns')
	      local map = function(mode, l, r, desc)
	        vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
	      end
	
	      map('n', ']c', gitsigns.next_hunk, 'Next git hunk')
	      map('n', '[c', gitsigns.prev_hunk, 'Prev git hunk')
	      map('n', '<leader>hs', gitsigns.stage_hunk, 'Stage hunk')
	      map('n', '<leader>hr', gitsigns.reset_hunk, 'Reset hunk')
	      map('n', '<leader>hp', gitsigns.preview_hunk, 'Preview hunk')
	      map('n', '<leader>hb', gitsigns.blame_line, 'Blame line')
	    end,
	  },
	},
}
