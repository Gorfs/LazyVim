-- Configure noice.nvim to fix treesitter "tab" node type error and move
-- the command line back to the bottom left (native cmdline position).
return {
  {
    "folke/noice.nvim",
    opts = {
      -- Use the native Neovim cmdline at the bottom left instead of the
      -- floating popup at the center of the screen.
      cmdline = {
        view = "cmdline",
        -- Avoid Treesitter-based cmdline highlighting to prevent
        -- "Invalid node type \"tab\"" query errors.
        format = {
          cmdline = { pattern = "^:", icon = "" },
          search_down = { kind = "search", pattern = "^/", icon = " " },
          search_up = { kind = "search", pattern = "^%?", icon = " " },
          filter = { pattern = "^:%s*!", icon = "$" },
          lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "" },
          help = { pattern = "^:%s*he?l?p?%s+", icon = "" },
          input = { view = "cmdline_input", icon = "󰥻 " },
        },
      },
      presets = {
        bottom_search = true, -- classic bottom cmdline for /search
        command_palette = false, -- do not merge cmdline + popup in the centre
      },
    },
  },
}
