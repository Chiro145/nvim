
require('nvim-treesitter.configs').setup {
  ensure_installed = { "c", "cpp", "lua", "vim", "markdown" }, -- cài parser cần
  highlight = {
    enable = true,      -- 🔑 Bật highlight
    additional_vim_regex_highlighting = false, -- tránh xung đột
  },
  indent = { enable = true }, -- tuỳ chọn: bật indent tự động
}
