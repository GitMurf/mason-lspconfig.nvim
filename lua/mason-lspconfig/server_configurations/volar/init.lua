local typescript = require "mason-lspconfig.typescript"

---@param install_dir string
return function(install_dir)
    return {
        on_new_config = function(new_config, workspace_dir)
            local tsdk = typescript.resolve_server_path(install_dir, workspace_dir)
            new_config.init_options.typescript.serverPath = tsdk
            new_config.init_options.typescript.tsdk = tsdk
        end,
    }
end
