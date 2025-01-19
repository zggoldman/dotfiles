vim.keymap.set("n", "<leader>t", ":call setreg('+', \"bundle exec rspec \" .. expand('%'))<CR>", { silent = true })
