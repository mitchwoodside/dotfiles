return {
  cmd = { 'pyright-langserver', '--stdio' },
  root_markers = { "pyproject.toml","setup.py","setup.cfg","requirements.txt","Pipfile","pyrightconfig.json" },
  filetypes = { 'python' },
  settings = {
    pyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { '*' },
      },
    },
  },
}
