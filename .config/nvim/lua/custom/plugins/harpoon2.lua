return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    -- add current file to harpoon list
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'harpoon file' })

    -- toggle harpoon quick menu
    vim.keymap.set('n', '<leader>A', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'harpoon quick menu' })

    -- Map <leader>1 to <leader>5 to select harpooned files 1 to 5
    for i = 1, 5 do
      vim.keymap.set('n', '<leader>' .. i, function()
        harpoon:list():select(i)
      end, { desc = 'harpoon to file ' .. i })
    end

    -- navigate to previous/next harpooned file with wrapping
    vim.keymap.set('n', '<C-p>', function()
      harpoon:list():prev { ui_nav_wrap = true }
    end, { desc = 'harpoon previous file' })

    vim.keymap.set('n', '<C-n>', function()
      harpoon:list():next { ui_nav_wrap = true }
    end, { desc = 'harpoon next file' })

    -- clear harpoon list
    vim.keymap.set('n', '<leader>hc', function()
      harpoon:list():clear()
    end, { desc = 'harpoon clear list' })
  end,
}
