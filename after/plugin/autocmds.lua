-- Create group to assign commands
-- "clear = true" must be set to prevent loading an
-- auto-command repeatedly every time a file is resourced
-- https://stackoverflow.com/questions/77147995/setting-up-formatters-in-neovim-with-mason-lsp-zero
local autocmd_group = vim.api.nvim_create_augroup("custom auto-commands", { clear = true })

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    pattern = { "*.go" },
    desc = "auto format go files after saving",
    callback = function()
        local fileName = vim.api.nvim_buf_get_name(0)
        vim.cmd(":silent !gofmt -w " .. fileName)
    end,
    group = autocmd_group,
})

