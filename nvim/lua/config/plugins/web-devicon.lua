return {
    "nvim-tree/nvim-web-devicons",
    config = function ()
        local nvim_web_devicons = require"nvim-web-devicons"
        local icons = nvim_web_devicons.get_icons()
        local color = "#41505e"

        for _, icon_data in pairs(icons) do
            icon_data.color = color
        end

        nvim_web_devicons.set_icon(icons)

        nvim_web_devicons.setup({
            default = true,
            color_icons = true,
        })
    end
}
