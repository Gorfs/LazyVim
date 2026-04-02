-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true
vim.opt.swapfile = false
-- Hide the command line when not in use; it appears only while typing a command.
-- Requires Neovim >= 0.8. Works with the native cmdline since noice.nvim is disabled.
vim.opt.cmdheight = 0
-- Use the faster TypeScript LSP backend for snappier editing in large TS projects.
vim.g.lazyvim_ts_lsp = "tsgo"
