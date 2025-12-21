-- Autocommands for C filetypes
vim.api.nvim_create_autocmd("FileType", {
  pattern = "c",
  callback = function()
    -- Map F5 to save and compile C code
    vim.keymap.set("n", "<F5>", ":w<CR>:!gcc -Wall -lm -O2 -DIS_CHIRO % -o a.out<CR>", { buffer = true, silent = true })
    -- Map F9 to save and run the compiled C program
    vim.keymap.set("n", "<F9>", ":w<CR>:!./a.out<CR>", { buffer = true, silent = true })
  end,
})

-- Autocommands for C++ filetypes
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  callback = function()
    -- Map F5 to save and compile C++ code
    vim.keymap.set("n", "<F5>", ":w<CR>:!g++ -Wall -O2 -DIS_CHIRO % -o a.out<CR>", { buffer = true, silent = true })
    -- Map F9 to save and run the compiled C++ program
    vim.keymap.set("n", "<F9>", ":w<CR>:!./a.out<CR><enter>", { buffer = true, silent = true })
  end,
})

-- Autocommands for Python filetypes
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    -- Map F5 to save and run Python code (assuming :CompileAndRunPYTHON is a custom command)
    vim.keymap.set("n", "<F5>", ":w | :CompileAndRunPYTHON<CR>", { buffer = true, silent = true })
  end,
})
