vim.lsp.config.clangd = require("lsp.clangd")
vim.lsp.set_log_level("OFF")
vim.lsp.enable("clangd")

vim.diagnostic.config({
    virtual_text = false,
    signs = false,
    underline = true,
    update_in_insert = false,
})

vim.notify = function(_, _, _)
end
