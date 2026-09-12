-- Set <space> as the leader key.
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.diagnostics")
require("config.colorscheme")
require("config.lsp")
