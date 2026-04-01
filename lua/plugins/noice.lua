-- Disable noice.nvim because of recurring Treesitter cmdline query errors.
-- This keeps Neovim's native command line visible and reliable.
return {
  {
    "folke/noice.nvim",
    enabled = false,
  },
}
