-- Bootstrap lazy plugin manager

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(lazypath) then ---@diagnostic disable-line: undefined-field
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

vim.opt.rtp:prepend(lazypath)

-- Set leaders

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Load vim config and keybindings

require 'options'
require 'keymaps'
require 'autocmds'

-- Load plugins with lazy

require('lazy').setup {
  spec = {
    { import = 'plugins' },
  },
  install = { colorscheme = { 'github_dark_high_contrast' } },
  checker = { enabled = true },
}

require 'toggles'

vim.lsp.enable 'ruby-lsp'
vim.lsp.enable 'herb_ls'
vim.lsp.enable 'html-lsp'
