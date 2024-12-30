return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  config = function()
    require('oil').setup {
      columns = { 'icon' },
      keymaps = {
        ['<C-h>'] = false,
      },
      view_options = {
        show_hidden = true,
      },
    }

    -- open parent directory in current window
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

    -- open parent direcotry in floating window
    vim.keymap.set('n', '<space>-', require('oil').toggle_float)
  end,
}
