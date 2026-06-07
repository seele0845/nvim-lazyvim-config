return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- 原有配置保留
      lua = { "stylua" },
      python = { "black" },
      javascript = { "prettier" },
      -- 新增 Fennel 格式化
      fennel = { "fnlfmt" },
    },
    -- 可选：自定义 fnlfmt 参数（缩进宽度等）
    -- formatters = {
    --   fnlfmt = {
    --     prepend_args = { "--indent-width", "2" }, -- 默认2空格缩进
    --   },
    -- },
  },
}
