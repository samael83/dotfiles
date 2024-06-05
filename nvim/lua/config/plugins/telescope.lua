return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make"
        },
    },
    config = function()
        local telescope = require("telescope")
        local telescope_builtin = require("telescope.builtin")

        telescope.setup({
            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                }
            },

            defaults = {
                -- path_display = { "smart" },
            },
        })

        telescope.load_extension("fzf")

        vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})
        vim.keymap.set("n", "<leader>fp", telescope_builtin.git_files, {})
        vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, {})
        vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, {})
        vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, {})
        vim.keymap.set("n", "<leader>cs", telescope_builtin.colorscheme, {})
    end
}

