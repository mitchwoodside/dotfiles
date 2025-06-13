return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- local lspconfig = require("lspconfig")

      function set_bindings(client, buffer)
        function bufmap(mode, lhs, fn)
          -- vim.keymap.set(mode, lhs, fn, { silent = true, buffer = buffer })
          vim.keymap.set(mode, lhs, fn, { silent = false, buffer = buffer })
        end

        function format()
          vim.lsp.buf.format({ async = true })
        end

        vim.api.nvim_buf_set_option(buffer, "omnifunc", "v:lua.vim.lsp.omnifunc")

        -- bufmap("n", "<Leader>ca", vim.lsp.buf.code_action)
        bufmap("n", "K", vim.lsp.buf.hover)
        bufmap("n", "<Leader>cf", format)
        bufmap("n", "<Leader>cr", vim.lsp.buf.rename)
        bufmap("n", "gD", vim.lsp.buf.references)
        bufmap("n", "gI", vim.lsp.buf.implementation)
        bufmap("n", "gd", vim.lsp.buf.definition)
        -- bufmap("n", "<Leader>cX", vim.diagnostic.setqflist)
        -- bufmap("n", "<Leader>ci", vim.lsp.buf.implementation)
        -- bufmap("n", "[e", vim.diagnostic.goto_prev)
        -- bufmap("n", "]e", vim.diagnostic.goto_next)
        -- bufmap("v", "<Leader>ca", vim.lsp.buf.range_code_action)
      end

--       local flags = { debounce_text_changes = 150 }
--       local servers = { "ruff", "terraformls", "pyright" }
--       for _, server in ipairs(servers) do
--         lspconfig[server].setup({
--           on_attach = set_bindings,
-- --           flags = flags,
--         })
--       end

    end
  }
}
