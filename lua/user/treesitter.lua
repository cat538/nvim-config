local status_ok, configs = pcall(require, "nvim-treesitter.configs")

if not status_ok then return end

configs.setup {
  -- A list of parser names, or "maintained" or "all"
  ensure_installed = { "lua", "c", "rust", },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing (for "all")
  -- ignore_install = { "" },

  highlight = {
    -- `false` will disable whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "" },
    -- additional_vim_regex_highlighting = true,
  },

  indent = { enable = true,},

  -- auto pairs (windwp/nvim-autopairs)
  autopairs = { enable = true, },
}
