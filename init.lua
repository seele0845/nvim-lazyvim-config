-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.lsp.set_log_level("debug")
vim.lsp.enable("fennel_ls")

-- vim.lsp.enable("fennel_language_server")

vim.opt.fileformats = "unix,dos"

-- WSL 专用：绑定 win32yank.exe
if vim.fn.has("wsl") == 1 then
  vim.g.clipboard = {
    name = "win32yank",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = false,
  }
end

-- 让 y/p 默认走系统剪贴板
vim.opt.clipboard = "unnamedplus"
