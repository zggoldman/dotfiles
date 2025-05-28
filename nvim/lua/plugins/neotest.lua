return {
  "nvim-neotest/neotest",
  lazy = true,
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "olimorris/neotest-rspec",
  },
  config = function()
    local neotest = require("neotest")

    neotest.setup({
      adapters = {
        require("neotest-rspec")
      },
      discovery = {
        -- Drastically improve performance in ginormous projects by
        -- only AST-parsing the currently opened buffer.
        enabled = false,
        -- Number of workers to parse files concurrently.
        -- A value of 0 automatically assigns number based on CPU.
        -- Set to 1 if experiencing lag.
        concurrent = 1,
      }
    })
  end,
  keys = {
    { '<leader>tf', "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>",      desc = '[T]est current [f]ile' },
    { '<leader>tt', "<cmd>lua require('neotest').run.run()<cr>",                        desc = '[T]est nearest test' },
    { '<leader>tx', "<cmd>lua require('neotest').run.stop()<cr>",                       desc = 'Stop test' },
    { '<leader>tl', "<cmd>lua require('neotest').run.run_last()<cr>",                   desc = 'Run last test' },
    { '<leader>ts', "<cmd>lua require('neotest').summary.toggle({ enter = true })<cr>", desc = 'toggle summary' },
    { '<leader>to', "<cmd>lua require('neotest').output_panel.toggle()<cr>",            desc = 'toggle output panel' },
  },
}
