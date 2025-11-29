-- Description: This file configures the Nightfox color scheme for Neovim.
return {
  'EdenEast/nightfox.nvim',
  init = function()
    require('nightfox').setup {
      options = {
        transparent = true, -- Enable transparent background
        styles = {
          comments = 'italic',
          functions = 'bold',
          keywords = 'bold',
        },
      },
    }

    vim.cmd.colorscheme 'duskfox'
  end,
}
