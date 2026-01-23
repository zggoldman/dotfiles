vim.keymap.set("n", "<leader>tc", ":call setreg('+', \"bundle exec rspec \" .. expand('%'))<CR>", { silent = true })
