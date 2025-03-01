return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      function set_bindings(client, buffer)
        function bufmap(mode, lhs, fn)
          vim.keymap.set(mode, lhs, fn, { silent = true, buffer = buffer })
        end

        vim.api.nvim_buf_set_option(buffer, "omnifunc", "v:lua.vim.lsp.omnifunc")
--         vim.keymap.set("n", "<Leader>cf", vim.lsp.buf.format)

--         bufmap("n", "<Leader>cX", vim.diagnostic.setqflist)
        bufmap("n", "<Leader>ca", vim.lsp.buf.code_action)
        bufmap("n", "<Leader>cf", vim.lsp.buf.format)
--         bufmap("n", "<Leader>ci", vim.lsp.buf.implementation)
        bufmap("n", "<Leader>cr", vim.lsp.buf.rename)
--         bufmap("n", "K", vim.lsp.buf.hover)
--         bufmap("n", "[e", vim.diagnostic.goto_prev)
--         bufmap("n", "]e", vim.diagnostic.goto_next)
--         bufmap("n", "gD", vim.lsp.buf.references)
--         bufmap("n", "gI", vim.lsp.buf.implementation)
--         bufmap("n", "gd", vim.lsp.buf.definition)
--         bufmap("v", "<Leader>ca", vim.lsp.buf.range_code_action)
      end

      local flags = { debounce_text_changes = 150 }
      local servers = { "ruff", "terraformls" }
      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          on_attach = set_bindings,
--           flags = flags,
        })
      end
--       local lspconfig = require('lspconfig')

      -- Ruff LSP setup
--       lspconfig.ruff.setup{
--         on_attach = function(client, bufnr)
--           vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
--         end,
--       }

      -- Terraform LSP setup
--       lspconfig.terraformls.setup{
--         on_attach = function(client, bufnr)
--           vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
--
--           -- Auto-format on save for Terraform files
--           if client.supports_method("textDocument/formatting") then
--             vim.api.nvim_create_autocmd("BufWritePre", {
--               buffer = bufnr,
--               callback = function()
--                 vim.lsp.buf.format({ bufnr = bufnr })
--               end,
--             })
--           end
--         end,
--       }
    end
  }
}