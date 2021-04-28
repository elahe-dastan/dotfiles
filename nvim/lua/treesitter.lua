require('nvim-treesitter.configs').setup {
  -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = { "lua", "go", "rust", "c", "bash" },
  -- list of parsers to ignore installing
  ignore_install = {},
  highlight = {
    enable = true,  -- false will disable the whole extension
    disable = {},   -- list of language that will be disabled
  },
  incremental_selection = {
    enable = true,
  },
  indent = {
    enable = true
  }
}
