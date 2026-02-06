--- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd(
  'TextYankPost',
  {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
      vim.highlight.on_yank()
    end,
  },

  vim.api.nvim_create_user_command('CRpath', function()
    local relative_path = vim.fn.expand '%:p:.'
    if relative_path ~= '' then
      vim.fn.setreg('+', relative_path)
      vim.notify('Copied relative path: ' .. relative_path)
    else
      vim.notify('No file name to copy', vim.log.levels.WARN)
    end
  end, {
    desc = 'Copy the relative path of the current file to the clipboard',
  })
)
