vim.api.nvim_create_user_command("CPW", function(opts)
    local home = os.getenv("HOME") or vim.fn.expand("~")
    local path = home.."/Dev/C++"

    if vim.fn.isdirectory(path) == 0 then vim.fn.mkdir(path, "p") end
    vim.cmd("cd " .. path)

    local code_file = opts.args ~= "" and opts.args or nil
    if code_file then
        vim.cmd("edit "..code_file)
    else
        vim.cmd("enew")
    end

    vim.cmd("vsplit")
    vim.cmd("wincmd l") -- focus sang bên phải
    vim.cmd("vertical resize " .. math.floor(vim.o.columns*0.4)) -- code 60%, right 40%

    local right_buf_files = {"OUTPUT.OUT","INPUT.INP"}
    for i,fname in ipairs(right_buf_files) do
        if i == 1 then
            if vim.fn.filereadable(path.."/"..fname) == 1 then
                vim.cmd("edit "..fname)
            else
                vim.cmd("enew")
                vim.bo.filetype="txt"
                vim.cmd("file "..fname)
            end
        else
            vim.cmd("split")
            if vim.fn.filereadable(path.."/"..fname) == 1 then
                vim.cmd("edit "..fname)
            else
                vim.cmd("enew")
                vim.bo.filetype="txt"
                vim.cmd("file "..fname)
            end
        end
    end

    vim.cmd("wincmd k")
    vim.cmd("resize " .. math.floor(vim.o.lines*1/2))
    vim.cmd("wincmd h")
end, {nargs="?"})
