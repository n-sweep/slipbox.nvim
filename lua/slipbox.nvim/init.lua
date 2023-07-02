local vim = vim

function insert_date()
    local date = os.date('_%Y%m%d%H%M')
    local current_pos = vim.api.nvim_win_get_cursor(0)
    vim.api.nvim_put({date}, "b", true, true)
    vim.api.nvim_win_set_cursor(0, current_pos)
end

vim.keymap.set('n', '<Leader>il', '<CMD>lua insert_date()<CR>', {noremap=true, silent=true})
