require('neural').setup({
    source = {
        openai = {
            api_key = vim.env.OPENAI_API_KEY, -- Set the OPENAI_API_KEY in ~/.bashrc to use this
        },
    },
})
