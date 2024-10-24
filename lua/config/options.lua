local opt = vim.opt
local glb = vim.g


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
opt.cc          =   "80"
opt.relativenumber =    true
opt.termguicolors  =    true


-- ultisnip
glb.UltiSnipsExpandTrigger='<c-x>'
glb.UltiSnipsJumpForwardTrigger='<c-j>'
glb.UltiSnipsJumpBackwardTrigger='<c-k>'


