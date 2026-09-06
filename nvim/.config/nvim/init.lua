-- Set <space> as the leader key.
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("config.colorscheme")
require("config.options")
require("config.lsp")
