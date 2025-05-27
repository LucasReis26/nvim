require('config.lazy')

vim.cmd([[colorscheme catppuccin-frappe]]);
vim.o.number = true
vim.o.relativenumber = true
vim.o.cindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.guifont = "FiraCode_Nerd_Font:h14"
vim.cmd('syntax enable')
vim.keymap.set('n','<c-t>', ':split<cr><c-w>j:term<cr>:res 10<cr>i')

vim.api.nvim_create_autocmd("TermOpen",{
	pattern="*",
	callback = function()
		vim.keymap.set('t','<c-t>',[[exit<cr>]])
	end
})

vim.g.db_ui_env_variable_url = 'DATABASE_URL'




