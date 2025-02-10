local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Plugins
Plug('junegunn/seoul256.vim')
Plug('https://github.com/junegunn/vim-easy-align.git')
Plug('fatih/vim-go', { ['tag'] = '*' })
Plug('neoclide/coc.nvim', { ['branch'] = 'release' })
Plug('junegunn/fzf', { ['dir'] = '~/.fzf' })
Plug('nsf/gocode', { ['rtp'] = 'vim' })
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-tree/nvim-tree.lua')
Plug('catppuccin/nvim', { ['as'] = 'catppuccin' })
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug('windwp/nvim-ts-autotag')
Plug('windwp/nvim-autopairs')
Plug('olrtg/nvim-emmet')
Plug('barrett-ruth/live-server.nvim')
Plug ('L3MON4D3/LuaSnip', {['tag'] = 'v2.*', ['do'] = 'make install_jsregexp'}) 

-- Outras configurações
Plug('tpope/vim-fireplace', { ['for'] = 'clojure' })
Plug('~/my-prototype-plugin')

vim.call('plug#end')

-- Definir esquema de cores
vim.g.catppuccin_flavour = "latte"  -- Aqui você define o estilo Latte
vim.cmd('colorscheme catppuccin')  -- Aplica o esquema de cores Catppuccin Latte

-- Habilitar cores de 24 bits
vim.opt.termguicolors = true

-- Nvim Tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Configuração do Nvim Tree
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

local api = require('nvim-tree.api')
vim.keymap.set('n', '<c-n>', api.tree.toggle, { noremap = true, silent = true })
vim.keymap.set('n','<c-t>', ':split<cr><c-w>j:term<cr>')


-- Outras configurações do Neovim
vim.o.number = true
vim.o.relativenumber = true
vim.o.cindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.cmd('syntax enable')  -- Habilita a sintaxe

require('live-server').setup(config)

require('nvim-autopairs').setup({})

require('nvim-ts-autotag').setup({
  opts = {
    -- Defaults
    enable_close = true, -- Auto close tags
    enable_rename = true, -- Auto rename pairs of tags
    enable_close_on_slash = false -- Auto close on trailing </
  },
  -- Also override individual filetype configs, these take priority.
  -- Empty by default, useful if one of the "opts" global settings
  -- doesn't work well in a specific filetype
  per_filetype = {
    ["html"] = {
      enable_close = false
    }
  }
})

