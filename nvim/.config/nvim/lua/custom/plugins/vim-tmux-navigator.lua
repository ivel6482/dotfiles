return {
  -- Make tmux and neovim pane navigatio seamless
  'christoomey/vim-tmux-navigator',
  keys = {
    { '<C-h>', ':TmuxNavigateLeft<CR>' },
    { '<C-j>', ':TmuxNavigateDown<CR>' },
    { '<C-k>', ':TmuxNavigateUp<CR>' },
    { '<C-l>', ':TmuxNavigateRight<CR>' },
  },
}
