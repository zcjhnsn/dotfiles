return {
  'folke/tokyonight.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    require('tokyonight').setup {
      ---@diagnostic disable-next-line: missing-fields
      style = 'night',
      transparent = true,
      styles = {
        comments = { italic = true },
        keywords = { bold = true },
        functions = { bold = true },
      },
    }
    vim.cmd.colorscheme 'tokyonight-night'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
  end,
}
