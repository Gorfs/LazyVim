-- Neo-tree provides a file explorer with a tree-based UI.

---@module 'lazy'
---@type LazySpec
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  keys = {
    { '<leader>e', '<cmd>Neotree toggle<CR>', desc = '[E]xplorer (neo-tree)' },
    { '\\', '<cmd>Neotree reveal<CR>', desc = 'Reveal File in Explorer' },
  },
  ---@module 'neo-tree'
  ---@type neotree.Config
  opts = {
    close_if_last_window = false,
    filesystem = {
      hijack_netrw_behavior = 'open_default',
      use_libuv_file_watcher = true,
      follow_current_file = { enabled = true },
      filtered_items = {
        visible = false,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      window = {
        mappings = {
          ['<space>'] = 'toggle_node',
          ['P'] = { 'toggle_preview', config = { use_float = true } },
          ['\\'] = 'close_window',
          ['l'] = 'open',
          ['h'] = 'close_node',
          ['H'] = 'toggle_hidden',
        },
      },
    },
    default_component_configs = {
      git_status = {
        symbols = {
          added = '+',
          deleted = '-',
          modified = '~',
          renamed = 'R',
          untracked = '?',
          ignored = '!',
          unstaged = 'M',
          staged = 'S',
          conflict = 'C',
        },
      },
    },
  },
}