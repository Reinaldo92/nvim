require("sonarlint").setup {
    server = {
        cmd = {
            "sonarlint-language-server",
            --"java", "-jar", "sonarlint-language-server-VERSION.jar",
            -- Ensure that sonarlint-language-server uses stdio channel
            "-stdio",
            "-analyzers",
            -- paths to the analyzers you need, using those for python and java in this example
            vim.fn.expand "$MASON/share/sonarlint-analyzers/sonarpython.jar",
            vim.fn.expand "$MASON/share/sonarlint-analyzers/sonarcfamily.jar",
            vim.fn.expand "$MASON/share/sonarlint-analyzers/sonarjava.jar",
            vim.fn.expand "$MASON/share/sonarlint-analyzers/sonarphp.jar",
            vim.fn.expand "$MASON/share/sonarlint-analyzers/sonarjs.jar",
            vim.fn.expand "$MASON/share/sonarlint-analyzers/sonarjava.jar",
            vim.fn.expand "$MASON/share/sonarlint-analyzers/sonarxml.jar",
        },
    },
    filetypes = {
        -- Tested and working
        "python",
        "cpp",
        "php",
        "js",
        "xml",
        -- Requires nvim-jdtls, otherwise an error message will be printed
        "java",
    },
}
