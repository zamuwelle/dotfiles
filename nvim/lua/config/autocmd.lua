local paste = vim.paste

vim.paste = function(lines, phase)
	local ok = paste(lines, phase)
	vim.cmd("retab!")
	return ok
end
