local M = {}

function M.setup()
	vim.api.nvim_create_autocmd("FileType", {
	  pattern = "dbout",
	  callback = function()
		vim.opt_local.foldenable = false
	  end,
	})
end

return M
