return {
  'tahayvr/matteblack.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('matteblack').colorscheme()
    -- vim.cmd.colorscheme 'matteblack'
  end,
}
