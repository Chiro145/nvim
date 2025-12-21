local root = vim.fs.find({ "compile_commands.json", ".git" }, { upward = true })[1]

return {
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = root and vim.fs.dirname(root) or vim.loop.cwd(),
}
