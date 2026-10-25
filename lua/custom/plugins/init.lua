-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  { -- Theme: Catppuccin
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha', -- latte, frappe, macchiato, mocha
      }
      vim.cmd.colorscheme 'catppuccin'
    end,
  },

  { -- Run code snippets, show output on the right
    'michaelb/sniprun',
    build = 'bash install.sh',
    opts = {
      ---@type sniprun.displayTypes
      display = {
        'Right',
      },
    },
    keys = {
      {
        '<leader>r',
        function() require('sniprun').run() end,
        desc = '[R]un Python file / snippet',
      },
      {
        '<leader>R',
        function() require('sniprun').run('v') end,
        mode = 'v',
        desc = 'Run visual selection',
      },
    },
  },
}
