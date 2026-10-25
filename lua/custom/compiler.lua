local M = {}

function M.setup()
  local function compile_cpp()
    local filepath = vim.fn.expand '%:p'
    local outfile = vim.fn.expand '%:p:r'
    vim.cmd('vnew | term g++ ' .. filepath .. ' -o ' .. outfile .. ' && echo "Build OK"')
  end

  vim.keymap.set('n', '<leader>m', compile_cpp, { desc = 'Compile C++ (no run)' })

  local kitty_font = function(delta)
    vim.fn.system { 'kitty', '@', 'set-font-size', delta }
  end
  vim.keymap.set('n', '<C-=>', function() kitty_font('+2') end, { desc = 'Increase font size' })
  vim.keymap.set('n', '<C-->', function() kitty_font('-2') end, { desc = 'Decrease font size' })
  vim.keymap.set('n', '<C-0>', function() kitty_font('13') end, { desc = 'Reset font size' })

end

return M
