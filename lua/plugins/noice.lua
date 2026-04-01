-- Configure noice.nvim to fix treesitter "tab" node type error and move
-- the command line back to the bottom left (native cmdline position).
return {
  {
    "folke/noice.nvim",
    opts = {
      -- Use the native Neovim cmdline at the bottom left instead of the
      -- floating popup at the centre of the screen. This also avoids the
      -- treesitter query error caused by the invalid "tab" node type that
      -- noice's popup uses for syntax highlighting.
      cmdline = {
        view = "cmdline",
      },
      presets = {
        bottom_search = true, -- classic bottom cmdline for /search
        command_palette = false, -- do not merge cmdline + popup in the centre
      },
    },
  },
}
