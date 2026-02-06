return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = function()
    require('nvim-treesitter').setup {
      install_dir = vim.fn.stdpath 'data' .. '/site',
    }

    local parsers = { 'css', 'html', 'javascript', 'latex', 'norg', 'regex', 'scss', 'svelte', 'tsx', 'typst', 'vue' }

    vim.notify('Installing treesitter parsers: ' .. table.concat(parsers, ', '), vim.log.levels.INFO)
    require('nvim-treesitter').install(parsers):wait(300000)
    vim.notify('Parser installation complete!', vim.log.levels.INFO)
  end,
  config = function()
    require('nvim-treesitter').setup {
      install_dir = vim.fn.stdpath 'data' .. '/site',
    }
  end,
}
