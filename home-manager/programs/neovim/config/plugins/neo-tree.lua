require("neo-tree").setup({
  filesystem = {
    bind_to_cwd = false,
    follow_current_file = { enable = true },
    use_libuv_file_watcher = true,
  },
  default_component_configs = {
    indent = {
      with_expanders = true,
      expander_collapsed = "",
      expander_expanded = "",
      expander_highlight = "NeoTreeExpander",
    },
  },
})
