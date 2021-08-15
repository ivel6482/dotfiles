noremap <silent> ;f <cmd>Telescope find_files<CR>
noremap <silent> ;r <cmd>Telescope live_grep<CR>
noremap <silent> \\ <cmd>Telescope buffers<CR>
noremap <silent> ;; <cmd>Telescope help_tags<CR>

lua << EOF
local actions = require('telescope.actions')

require('telescope').setup {
  defaults = {
  }
}
EOF
