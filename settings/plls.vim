augroup vimlsp_settings_plls
  au!
  LspRegisterServer {
      \ 'name': 'plls',
      \ 'cmd': {server_info->lsp_settings#get('plls', 'cmd', [lsp_settings#exec_path('plls')])},
      \ 'root_uri':{server_info->lsp_settings#get('plls', 'root_uri', lsp_settings#root_uri(['.git/']))},
      \ 'initialization_options': lsp_settings#get('plls', 'initialization_options', v:null),
      \ 'whitelist': lsp_settings#get('plls', 'whitelist', ['perl']),
      \ 'blacklist': lsp_settings#get('plls', 'blacklist', []),
      \ 'config': lsp_settings#get('plls', 'config', {}),
      \ 'workspace_config': lsp_settings#get('plls', 'workspace_config', {}),
      \ }
augroup END
