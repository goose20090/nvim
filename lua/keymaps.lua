-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Show [D]iagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>td', function()
  local current = vim.diagnostic.config().virtual_text
  vim.diagnostic.config { virtual_text = not current }
  vim.notify('Inline diagnostics ' .. (current and 'OFF' or 'ON'))
end, { desc = '[T]oggle Inline [D]iagnostics' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- toggle git blame easier with vim fugitive

local function toggle_file_wide_git_blame()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.bo[buf].filetype == 'gitsigns-blame' then
      vim.api.nvim_win_close(win, true)
      return
    end
  end
  vim.cmd 'Gitsigns blame'
end

vim.keymap.set('n', '<leader>gB', toggle_file_wide_git_blame, { silent = true, desc = 'Toggle File View Git‑[B]lame' })

-- copy filepath to clipboard using autocmd

vim.keymap.set('n', '<leader>cp', '<cmd>CRpath<CR>', {
  desc = 'Copy Relative Filepath to Clipboard',
})

-- toggle autoformat on save

vim.keymap.set('n', '<leader>tf', function()
  vim.g.autoformat = not vim.g.autoformat
  vim.notify('Autoformat is now ' .. (vim.g.autoformat and 'ON' or 'OFF'))
end, { desc = '[T]oggle [F]ormat on Save' })

-- toggle copilot
vim.g.copilot_enabled = true
vim.keymap.set('n', '<leader>tc', function()
  if vim.g.copilot_enabled then
    vim.cmd 'Copilot disable'
    vim.g.copilot_enabled = false
    vim.notify 'Copilot disabled'
  else
    vim.cmd 'Copilot enable'
    vim.g.copilot_enabled = true
    vim.notify 'Copilot enabled'
  end
end, { desc = '[T]oggle [C]opilot' })
