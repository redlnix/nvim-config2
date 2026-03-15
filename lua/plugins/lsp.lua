-- plugins/lsp.lua
return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = { border = "rounded" }
      })
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "html",
          "cssls",
          "ts_ls",
          "emmet_ls",
        },
        automatic_installation = true,
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.config("html",     { capabilities = capabilities })
      vim.lsp.config("cssls",    { capabilities = capabilities })
      vim.lsp.config("ts_ls",    { capabilities = capabilities })
      vim.lsp.config("emmet_ls", {
        capabilities = capabilities,
        filetypes = { "html", "css", "javascript" },
      })

      vim.lsp.enable({ "html", "cssls", "ts_ls", "emmet_ls" })

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(e)
          local opts = { buffer = e.buf }
          vim.keymap.set("n", "gd",        vim.lsp.buf.definition,  opts)
          vim.keymap.set("n", "K",         vim.lsp.buf.hover,       opts)
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename,     opts)
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
          vim.keymap.set("n", "gr",        vim.lsp.buf.references,  opts)
        end,
      })
    end,
  },
}
