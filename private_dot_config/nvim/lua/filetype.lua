-- Treat *.mod files as gomod file
vim.api.nvim_clear_autocmds({
    event = { "BufRead", "BufNewFile" },
    pattern = { "*.mod", "*.MOD" },
})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "*.mod", "*.MOD" },
    callback = function()
        vim.bo.filetype = "gomod"
    end,
})
-- go template files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "*.gotmpl", "*.go.tmpl", "*.tmpl" },
    callback = function()
        vim.bo.filetype = "gotmpl"
    end,
})
