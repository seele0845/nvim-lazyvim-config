-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.lsp.set_log_level("debug")
vim.lsp.enable("fennel_ls")

-- vim.lsp.enable("fennel_language_server")

vim.opt.fileformats = "unix,dos"
