function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Mappings
--          Telescope
map("n", "<leader>tf", "<cmd>Telescope find_files<cr>")
map("n", "<leader>tg", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>tb", "<cmd>Telescope buffers<cr>")


--          NvimTree
map("n", "<leader>tt", "<cmd>NvimTreeToggle<cr>")
