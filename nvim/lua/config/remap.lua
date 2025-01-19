vim.g.mapleader = ' '

-- Sane cut/paste
vim.keymap.set('n', "p", [["0p]])
vim.keymap.set('n', "P", [["0P]])
vim.keymap.set('n', "y", [["0y]])
vim.keymap.set('n', "d", [["0d]])

-- Window navigation
vim.keymap.set('n', '<C-j>', '<C-W>j', { silent = true })
vim.keymap.set('n', '<C-k>', '<C-W>k', { silent = true })
vim.keymap.set('n', '<C-l>', '<C-W>l', { silent = true })
vim.keymap.set('n', '<C-h>', '<C-W>h', { silent = true })

-- Buffer navigation
vim.keymap.set('n', '[b', '<Cmd>bprev<CR>')
vim.keymap.set('n', ']b', '<Cmd>bnext<CR>')

-- Move line up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Copy to sytem clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Copy file relative path
vim.keymap.set("n", "<leader>c", ":call setreg('+', expand('%'))<CR>", { silent = true })

vim.keymap.set({ "n", "i", "v" }, "<C-e>", "<end>")
vim.keymap.set({ "n", "i", "v" }, "<C-a>", "<home>")
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")
