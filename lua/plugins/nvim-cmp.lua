return {
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'SirVer/ultisnips',
            'quangnguyen30192/cmp-nvim-ultisnips',  
        },
        config = function()
            local cmp = require("cmp")

            cmp.setup({
                snippet = {
                    -- REQUIRED - you must specify a snippet engine
                    expand = function(args)
                        vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
                    end,
                },
                window = {
                -- completion = cmp.config.window.bordered(),
                -- documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'ultisnips' }, -- For ultisnips users.
                    { name = 'buffer' },
                    { name = 'path' },
                }),
                formatting = {
                    -- Set order from left to right
                    -- kind: single letter indicating the type of completion
                    -- abbr: abbreviation of "word"; when not empty it is used in the menu instead of "word"
                    -- menu: extra text for the popup menu, displayed after "word" or "abbr"
                    fields = { 'abbr', 'menu' },

                    -- customize the appearance of the completion menu
                    format = function(entry, vim_item)
                        vim_item.menu = ({
                            nvim_lsp = '[Lsp]',
                            ultisnip = '[Ultisnip]',
                            buffer = '[File]',
                            path = '[Path]',
                        })[entry.source.name]
                        return vim_item
                    end,
                },
            })
        end,
    }
}
