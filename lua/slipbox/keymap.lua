local vim = vim
local M = {}

function M.setup(mod)
    vim.keymap.set(
        'n', '<Leader>id',
        function() mod.insert_date() end,
        {noremap=true, silent=true}
    )

    vim.keymap.set(
        'n', '<CR>',
        function() mod.create_or_follow_link() end,
        {noremap=true, silent=true}
    )

    vim.keymap.set(
        'n', '<BS>',
        function() vim.cmd('b#') end,
        {noremap=true, silent=true}
    )
end

return M
