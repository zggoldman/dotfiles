return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  config = function()
    require("fzf-lua").setup({
      files = { formatter = "path.filename_first" }
    })

    vim.keymap.set('n', '<leader>pf', '<Cmd>FzfLua files<CR>')
    vim.keymap.set('n', '<leader>pb', '<Cmd>FzfLua buffers<CR>')
    vim.keymap.set('n', '<leader>ps', '<Cmd>FzfLua grep<CR>')
    vim.keymap.set('n', '<leader>pws', '<Cmd>FzfLua grep_cword<CR>')
    vim.keymap.set('n', '<leader>pWs', '<Cmd>FzfLua grep_cWORD<CR>')
    vim.keymap.set('n', '<leader>pg', '<Cmd>FzfLua live_grep<CR>')
  end
}
