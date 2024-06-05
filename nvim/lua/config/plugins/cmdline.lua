return {
    "VonHeikemen/fine-cmdline.nvim",
    dependencies = {
        {"MunifTanjim/nui.nvim"}
    },
    config = function()
        require("fine-cmdline").setup({
            cmdline = {
                enable_keymaps = true,
                smart_history = true,
                prompt = "> "
            },
            popup = {
                position = {
                    row = "37%",
                    col = "50%",
                },
                size = {
                    width = "50%",
                },
                border = {
                    style = "rounded",
                    text = {
                        top = " Command ",
                        top_align = "center"
                    },
                    padding = { 0, 1 },
                },
                win_options = {
                    winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
                },
            },
            hooks = {
                before_mount = function(input)
                    -- code
                end,
                after_mount = function(input)
                    -- code
                end,
                set_keymaps = function(imap, feedkeys)
                    -- code
                end
            }
        })

        vim.api.nvim_set_keymap("n", "<CR>", "<cmd>FineCmdline<CR>", { noremap = true })
    end
}
