local is_windows = vim.loop.os_uname().sysname == "Windows_NT"

local exe = is_windows and "a.exe" or "a.out"
local run = is_windows and exe or "./" .. exe

-- Autocommands for C filetypes
vim.api.nvim_create_autocmd("FileType", {
  pattern = "c",
  callback = function()
    vim.keymap.set(
      "n",
      "<F5>",
      ":w<CR>:!gcc -Wall -lm -O2 -DIS_CHIRO % -o " .. exe .. "<CR>",
      { buffer = true, silent = true }
    )

    vim.keymap.set(
      "n",
      "<F9>",
      ":w<CR>:!" .. run .. "<CR>",
      { buffer = true, silent = true }
    )
  end,
})

-- Autocommands for C++ filetypes
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  callback = function()
    vim.keymap.set(
      "n",
      "<F5>",
      ":w<CR>:!g++ -Wall -O2 -DIS_CHIRO % -o " .. exe .. "<CR>",
      { buffer = true, silent = true }
    )

    vim.keymap.set(
      "n",
      "<F9>",
      ":w<CR>:!" .. run .. "<CR>",
      { buffer = true, silent = true }
    )
  end,
})

-- Autocommands for Python filetypes
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.keymap.set(
      "n",
      "<F5>",
      ":w | :CompileAndRunPYTHON<CR>",
      { buffer = true, silent = true }
    )
  end,
})
