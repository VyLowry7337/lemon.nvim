local plugin_root = vim.fn.getcwd()
vim.opt.rtp:prepend(plugin_root)

local plenary_path = vim.fn.stdpath("data") .. "/site/pack/vendor/start/plenary.nvim"
vim.opt.rtp:prepend(plenary_path)

vim.cmd("runtime plugin/plenary.vim")
require("plenary.busted")
