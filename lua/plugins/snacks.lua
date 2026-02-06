return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    explorer = { enabled = true },
    image = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    gitbrowse = {
      remote_patterns = {
        { '^git@github%-personal:(.+)%.git$', 'https://github.com/%1' },
        { '^git@github%-personal:(.+)$', 'https://github.com/%1' },
      },
    },
    dashboard = {
      enabled = true,
      sections = {
        { section = 'header' },
        {
          section = 'recent_files',
          title = 'Recents',
          indent = 2,
          padding = 1,
          limit = 3,
        },
        { section = 'keys', title = 'Keys', indent = 2, gap = 1, padding = 1 },
        { section = 'startup' },
      },
    },
  },

  keys = {
    -- picker

    { '<leader>sf', function() Snacks.picker.smart() end, desc = '[F]iles' },
    { '<leader>sb', function() Snacks.picker.buffers() end, desc = '[B]uffers' },
    { '<leader>sg', function() Snacks.picker.grep() end, desc = '[G]rep' },
    { '<leader>sh', function() Snacks.picker.command_history() end, desc = 'Command [H]istory' },
    { '<leader>sn', function() Snacks.picker.notifications() end, desc = '[N]otification History' },
    { '<leader>sc', function() Snacks.picker.colorschemes() end, desc = '[C]olorschemes' },

    --git

    { '<leader>gb', function() Snacks.git.blame_line() end, desc = '[b]lame line' },
    { '<leader>go', function() Snacks.gitbrowse.open { what = 'file' } end, desc = '[O]pen in browser' },
    { '<leader>lg', function() Snacks.lazygit.open() end, desc = '[L]azy [G]it' },
    { '<leader>gf', function() Snacks.lazygit.log_file() end, desc = '[L]og [F]ile (with lazygit)' },

    -- other

    { '\\', function() Snacks.explorer() end, desc = 'File Explorer' },
  },
}
