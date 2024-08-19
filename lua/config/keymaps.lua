local wk = require("which-key")

wk.add({
    {            
        { "<leader>f", group = "File" },
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find file" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find contex in current root" },
        { "<leader>t", group = "Tree", icon=" " },
        { "<leader>tt", "<cmd>NvimTreeToggle<cr>", desc = "Open/Close tree" },
    }
})
