return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({

            highlight = { enable = true },
            indent = { enable = true },
            auto_install = true,
            sync_install = false,

            ensure_installed = {
                "json",
                "javascript",
                "typescript",
                "tsx",
                "yaml",
                "html",
                "css",
                "markdown",
                "markdown_inline",
                "bash",
                "lua",
                "vim",
                "dockerfile",
                "gitignore",
                "c",
                "python",
                "go",
                "rust",
                "regex",
                "toml",
            },
        })

        require("treesitter-context").setup{
            enable = true,
            throttle = true,
            max_lines = 0,
            patterns = {
                default = {
                    "class",
                    "function",
                    "method",
                    -- "for",
                    -- "while",
                    -- "if",
                    -- "switch",
                    -- "case",
                },
            },
        }
    end,
}
