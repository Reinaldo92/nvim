require'lspconfig'.sqls.setup{
   cmd = {"/home/reinaldo/.local/share/go/bin/sqls", "-config", "/home/reinaldo/.config/sqls/config.yml"};
	on_attach = function(client, bufnr)
		require('sqls').on_attach(client, bufnr)
	end,
    settings = {
        sqls = {
            connections = {
                {
                    driver = 'mysql',
                    dataSourceName = 'root:toor@tcp(0.0.0.0:3307)/db_datalake',
                },
                {
                    driver = 'postgresql',
                    dataSourceName = 'host=0.0.0.0 port=5432 user=root password=toor dbname=db_datalake sslmode=disable',
                },
            },
        },
    },
}
