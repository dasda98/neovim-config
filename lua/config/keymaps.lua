local wk = require("which-key")


wk.add({
    {
        { "<Tab>", "<cmd>bn<cr>"},
        { "<leader>t", group = "Tree", icon=" " },
        {
            "<leader>tt",
            "<cmd>NvimTreeToggle<cr>",
            desc = "Open/Close tree"
        },
        { "<leader>f", group = "File" },
        {
            "<leader>ff",
            "<cmd>Telescope find_files<cr>",
            desc = "Find file"
        },
        {
            "<leader>fg",
            "<cmd>Telescope live_grep<cr>",
            desc = "Find contex in current root"
        },
        { "<leader>x", group = "Diagnostics" },
        {
            "<leader>xx",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Diagnostics (Trouble)",
        },
        {
            "<leader>xX",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
            desc = "Buffer Diagnostics (Trouble)",
        },
        {
            "<leader>xL",
            "<cmd>Trouble loclist toggle<cr>",
            desc = "Location List (Trouble)",
        },
        {
            "<leader>xQ",
            "<cmd>Trouble qflist toggle<cr>",
            desc = "Quickfix List (Trouble)",
        },
        { "<leader>c", group = "Symbols" },
        {
            "<leader>cs",
            "<cmd>Trouble symbols toggle focus=false<cr>",
            desc = "Symbols (Trouble)",
        },
        {
            "<leader>cl",
            "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
            desc = "LSP Definitions / references / ... (Trouble)",
        },
    }
})
