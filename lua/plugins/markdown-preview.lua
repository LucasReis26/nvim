return{
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && yarn install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	ft = { "markdown" },
	config = function()
		vim.cmd([[
		let g:mkdp_browser = ''
		nmap <C-p> <Plug>MarkdownPreviewToggle
		]])
	end
}
