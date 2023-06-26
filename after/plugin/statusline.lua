require('lualine').setup {
    sections = {
        lualine_x = {
            {
                'encoding'
            },
            {
                'fileformat'
            },
            {
                'filetype',
                colored = false,
            }
        },
    },
}
