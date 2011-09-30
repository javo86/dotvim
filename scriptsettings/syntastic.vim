" Syntastic {
    " Options {
        "If set to 1, error window will automatically open
        let g:syntastic_auto_loc_list=1
        "Automatically jump to first error
        let g:syntastic_auto_jump=1
        "Use the |:sign| interface to mark syntax errors
        let g:syntastic_enable_signs=1
        "If set to 2, error window will close automatically when no erros
        "but wont be automatically open
        "let g:syntastic_auto_loc_list=2
        "Set status line Formatting, for moar options see Syntastic docs
        let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
        "Use this option to disable syntax checking on selected filetypes
        "let g:syntastic_disabled_filetypes = ['ruby', 'php']
    " }

    " Mappings {
    " }

" }
