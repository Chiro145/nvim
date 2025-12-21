local config_dir = vim.fn.stdpath("config")
local template_dir = config_dir .. "/templates"
local art_dir = template_dir .. "/arts"

vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.cpp",
    callback = function()
        vim.cmd("0r " .. template_dir .. "/Std.cpp")

        local arts = {}
        for _, file in ipairs(vim.fn.readdir(art_dir)) do
            if file:match("^art%d+%.txt$") then
                table.insert(arts, art_dir .. "/" .. file)
            end
        end

        if #arts > 0 then
            math.randomseed(os.time())
            local art = arts[math.random(#arts)]
            local last_line = vim.api.nvim_buf_line_count(0)
            vim.cmd(last_line .. "r " .. art)
        end

        vim.api.nvim_win_set_cursor(0, {27, 0})
    end,
})

vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.c",
    callback = function()
        vim.cmd("0r " .. template_dir .. "/Std.c")
    end,
})
