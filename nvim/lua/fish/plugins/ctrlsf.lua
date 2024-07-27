return {
  "dyng/ctrlsf.vim",
  config = function()
    local keymap = vim.keymap
    keymap.set("n", "<leader>C", "<cmd>CtrlSF<cr>")
  end,
}
