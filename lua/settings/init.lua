local opt = vim.opt
local cmd = vim.cmd


cmd([[
                    filetype plugin indent on
]])


opt.syntax      =   "enable"


-- indention
opt.tabstop     =   4
opt.shiftwidth  =   4
opt.softtabstop =   4
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
opt.relativenumber =   true
opt.cc          =   "80"

