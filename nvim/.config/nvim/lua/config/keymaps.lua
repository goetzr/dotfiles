-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Copy directly to system clipboard
vim.keymap.set({ "n", "x" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>yy", [["+yy]], { desc = "Yank line to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line (w/o newline) to system clipboard" })

-- Paste directly from system clipboard
vim.keymap.set("n", "<leader>p", [["+p]], { desc = "Paste from system clipboard" })
vim.keymap.set("n", "<leader>P", [["+P]], { desc = "Paste before from system clipboard" })

-- Prevent common replacements from polluting registers
vim.keymap.set("x", "<leader>p", [["+p]], { desc = "Paste over without overwriting register" })
vim.keymap.set("x", "p", [[P]], { desc = "Paste over without overwriting register" })
vim.keymap.set({ "n", "x" }, "<leader>d", [["_d]], { desc = "Delete into black hole register" })
