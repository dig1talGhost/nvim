-- init manager 
require("core.PluginManager")

--init settings
require("settings.Tabs")
require("settings.mason")
require("settings.cmp")
require("settings.lualine")
require("settings.alpha")
require("settings.ibl")
require("settings.autoclose")
vim.cmd "Alpha"
vim.cmd "Neotree"
vim.opt.relativenumber = true

-- Theme
vim.cmd.colorscheme "catppuccin-nvim"

local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.config('*', { capabilities = capabilities })

vim.lsp.enable('bashls')
vim.lsp.enable('gopls')

-- Both visual and normal mode for each, so you can open with a visual selection or without.
vim.api.nvim_set_keymap('v', '<leader>a', ':GPTModelsCode<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>a', ':GPTModelsCode<CR>', { noremap = true })

vim.api.nvim_set_keymap('v', '<leader>c', ':GPTModelsChat<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>c', ':GPTModelsChat<CR>', { noremap = true })

-- Golang
vim.api.nvim_create_autocmd("BufWritePre", { callback = function() vim.lsp.buf.format() end })
