local vim = vim

local function in_directory(target)
    -- check if nvim loaded in parent dir
    local exp_target = vim.fn.expand(target)
    local current = vim.fn.getcwd() .. '/'

    return current:find(exp_target, 1, true)
end

-- if buffer is opened in `target` or a child of `target`, set up plugin
if in_directory('~/.zettelkasten/') then

    local to_load = {
        'slipbox.assets',
    }
    local M = {}

    -- load all dependencies in `to_load` into the module
    for _, tbl in ipairs(to_load) do
        local t = require(tbl)
        for k, v in pairs(t) do
            M[k] = v
        end
    end

    -- set up keymappings
    require('slipbox.keymap').setup(M)

    return M
end

