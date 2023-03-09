local opt = vim.opt
local cmd = vim.cmd


cmd([[
                    filetype plugin indent on
]])


opt.syntax      =   "enable"


-- indention
opt.tabstop     =   2
opt.shiftwidth  =   2
opt.softtabstop =   2
opt.expandtab   =   true
opt.autoindent  =   true
opt.shiftround  =   true
opt.smartindent =   true


-- search
opt.hlsearch    =   true
opt.ignorecase  =   true
opt.smartcase   =   true


-- ui
opt.cursorline  =   true
opt.number      =   true
opt.cc          =   "80"

