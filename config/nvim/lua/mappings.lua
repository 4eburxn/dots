require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local imap = vim.keymap.del

imap("n", "<Tab>")
map("n", "<C-Tab>", "<cmd>bn<cr>")
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>r", "<cmd>:CMakeRun<cr>")



-- local tsbuiltin = require('telescope.builtin')
--
-- map('n', '<leader>b', tsbuiltin.buffers, {
--   sort_mru=true, ignore_current_buffer=true
-- })
-- map('n', '<leader>o', tsbuiltin.oldfiles, {})



-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
