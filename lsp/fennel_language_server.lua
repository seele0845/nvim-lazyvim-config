---@type vim.lsp.Config
return {
  cmd = { "fennel-language-server" },
  filetypes = { "fennel" },
  -- root_markers = { ".nfnl.fnl", "fnl", ".git" },
  root_dir = function(bufnr, on_dir)
    local fname = vim.api.nvim_buf_get_name(bufnr)
    local has_fls_project_cfg = function(path)
      local fnlpath = vim.fs.joinpath(path, "flsproject.fnl")
      return (vim.uv.fs_stat(fnlpath) or {}).type == "file"
    end
    on_dir(vim.iter(vim.fs.parents(fname)):find(has_fls_project_cfg) or vim.fs.root(0, ".git"))
  end,

  settings = {
    fennel = {
      workspace = {
        library = vim.api.nvim_list_runtime_paths(),
      },
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}
