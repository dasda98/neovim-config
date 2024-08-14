local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

wk.add({
    {
        { "<leader>f", group = "file" },
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find file" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find contex in current root" },
        { "<leader>t", group = "tree" },
        { "<leader>tt", "<cmd>NvimTreeToggle<cr>", desc = "Open/Close tree" },
    }

})

