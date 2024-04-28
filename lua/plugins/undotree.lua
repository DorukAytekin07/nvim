return {
    "jiaoshijie/undotree",
    dependencies = { { "nvim-lua/plenary.nvim" } },
    config = function()
        require("undotree").setup()
        vim.keymap.set('n', '<leader>uo', require('undotree').open, { noremap = true, silent = true })
        vim.keymap.set('n', '<leader>uc', require('undotree').close, { noremap = true, silent = true })
    end
}
