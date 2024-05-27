-- Setup nvim-cmp ----------------------------------
  local cmp = require'cmp'
  local lspkind = require('lspkind')

  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    mapping = {
      ['<A-b>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
      ['<A-n>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
      ['<A-w>'] = cmp.mapping(cmp.mapping.scroll_docs(-2), { 'i', 'c' }),
      ['<A-x>'] = cmp.mapping(cmp.mapping.scroll_docs(2), { 'i', 'c' }),
['<A-f>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }), -- Expands completion on cursor
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<A-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
    sources = cmp.config.sources({
      { name = 'ultisnips' }, -- ultisnips
      { name = 'nvim_lsp' },
      { name = 'spell' },
      { name = 'buffer' },
    }),

    formatting = {
        format = lspkind.cmp_format({
          mode = "symbol_text",
          menu = ({
            buffer = "﬘",
            spell = "暈",
            nvim_lsp = "[LSP]",
            nvim_lua = "",
            latex_symbols = "[LaTeX]",
            ultisnips = "[UltiSnips]",
            --treesitter = "",
          })
        }),
    },
  })
  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- autopairs
-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))

-- add a lisp filetype (wrap my-function), FYI: Hardcoded = { "clojure", "clojurescript", "fennel", "janet" }
--cmp_autopairs.lisp[#cmp_autopairs.lisp+1] = "racket"

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['lua_ls'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['julials'].setup {
    capabilities = capabilities
  }

