-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear highlights on search" })

-- For now I've merged the primary selection (unnamed) and the system clipboard (unnamedplus)
-- in options.lua
--
-- -- Copy directly to system clipboard
-- vim.keymap.set({ "n", "x" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
-- vim.keymap.set("n", "<leader>Y", '"+yy', { desc = "Yank line to system clipboard" })
--
-- -- Cut directly to system clipboard
-- vim.keymap.set({ "n", "x" }, "<leader>d", '"+d', { desc = "Cut to system clipboard" })
--
-- -- Paste directly from system clipboard
-- vim.keymap.set({ "n", "x" }, "<leader>p", '"+p', { desc = "Paste from system clipboard" })
-- vim.keymap.set("n", "<leader>P", '"+P', { desc = "Paste before from system clipboard" })

-- Make it easy to paste when in insert mode
vim.keymap.set("i", "<C-L>", "<C-R>+", { desc = "Paste in insert mode" })

-- Prevent common replacements from polluting registers
vim.keymap.set("x", "p", '"_dP', { desc = "Paste over without overwriting register" })
vim.keymap.set({ "n", "x" }, "<leader>d", '"_d', { desc = "Delete into black hole register" })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')
