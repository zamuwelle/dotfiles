if vim.g.vscode then
	vim.opt.clipboard:append("unnamedplus")
else
	require("config")
end
