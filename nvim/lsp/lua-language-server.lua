return {
  cmd = { 'lua-language-server' },
  root_markers = { 'init.lua' },
  filetypes = { 'lua' },
  settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}

