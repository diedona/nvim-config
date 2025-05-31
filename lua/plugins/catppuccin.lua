return {
    "catppuccin/nvim",
    name = "catpuccin",
    priority = 1000,
    lazy = false,
    config = function()
        local bg_transparent = true

        require('catppuccin').setup({
            flavour = "macchiato",
            transparent_background = bg_transparent
        })

        vim.cmd.colorscheme 'catppuccin'

        local toggle_transparency = function()
            local cat = require('catppuccin')
            bg_transparent = not bg_transparent
            cat.options.transparent_background = bg_transparent
            cat.compile()
            vim.cmd.colorscheme 'catppuccin'
        end

        vim.keymap.set('n', '<leader>tt', toggle_transparency, {noremap = true, silent = true, desc = '[T]oggle [T]ransparency'})
    end
}
