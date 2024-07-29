return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright"
      }
    },
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd" , "pyright" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",

    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })

      lspconfig.pyright.setup({
        capabilities = capabilities
      })

      lspconfig.clangd.setup({
        capabilities = capabilities
      })

      --[[lspconfig.texlab.setup({
        capabilities = capabilities
      })--]]

      --[[lspconfig.jdtls.setup({
        capabilities = capabilities
      })--]]

      --[[lspconfig.html.setup({
        capabilities = capabilities
      })--]]

      --[[lspconfig.htmx.setup({
        capabilities = capabilities
      })--]]

      --[[lspconfig.cssls.setup({
        capabilities = capabilities
      })--]]

      --[[lspconfig.tsserver.setup({
        capabilities = capabilities
      })--]]

      --[[lspconfig.gopls.setup({
        capabilities = capabilities
      })--]]

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "C", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gi", ":lua vim.lsp.buf.implementation()<CR>")
      vim.keymap.set("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>")
      vim.keymap.set("n", "<leader>gr", ":lua vim.lsp.buf.references()<CR>")

      vim.keymap.set("v", "<C-r>", ":lua vim.lsp.buf.rename()<CR>")
    end,

  },
}
