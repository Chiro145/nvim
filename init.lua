-- Plugin
require("core.cp")
require('core.plugins')
require('core.keybind')
require('core.randomske')
require('core.plugin_config')
require("core.plugin_config.nvim-lspconfig")


-- Basic
vim.opt.guicursor = {i = 'block'}
vim.opt.clipboard = 'unnamedplus'
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smarttab = true


vim.api.nvim_set_hl(0, 'Normal', {bg = 'none'})
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, 'NormalFloat', {bg = 'none'})
vim.api.nvim_set_hl(0, 'FloatBorder', {bg = 'none'})
vim.api.nvim_set_hl(0, 'Pmenu', {bg = 'none'})

vim.o.guifont = "SFMono\\ Nerd\\ Font\\ Mono\\ Medium:h9"
vim.g.neovide_ligatures = true

if vim.g.neovide then
    vim.g.neovide_opacity = 0.5
    vim.g.neovide_background_color = "#00000000"

    vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "NONE" })

    vim.api.nvim_set_hl(0, "VertSplit", { fg = "#cccccc", bg = "NONE" })
    vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#cccccc", bg = "NONE" })

    vim.opt.fillchars = {
        vert = "┃",
        horiz = "━",
        horizup = "┻",
        horizdown = "┳",
        vertleft = "┫",
        vertright = "┣",
        verthoriz = "╋",
    }
end
