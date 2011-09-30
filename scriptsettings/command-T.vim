" Doc {
  "maximum number of files to be scanned (default: 10,000)
  "let g:CommandTMaxFiles=20000
  "
  "Maximum level of recursion to search for directories in current direcory
  "(default: 15)
  "let g:CommandTMaxDepth=35
  "
  "The maximum height in lines the match window is allowed to expand to.
  "If set to 0, the window will occupy as much of the available space as
  "needed to show matching entries. (default: 0)
  "let g:CommandTMaxHeight=10
  "
  "By default the file listing only shows dot files if the pattern has a
  "dot in it, if set to a non zero value, command-T will always show dot
  "files in the result window. (default: 0)
  "let g:CommandTAlwaysShowDotFiles = 1
  "
  "If set to a non zero value, Command-T will never show dotfiles (default: 0)
  "let g:CommandTNeverShowDotFiles = 1
  "
  "If set to a non zero value, Command-T will recurse into dot directories
  "(default: 0)
  "let g:CommandTScanDotDirectories=1
  "
  "If set to a non zero value, the match window will appear at the top of the
  "window. (default: 0)
  "let g:CommandTMatchWindowAtTop=1
  "
  "If set to a non zero value, the best match will appear at the bottom
  "(default: 0)
  "let g:CommandTMatchWindowReverse=1
  "
  "Key mappings for canceling the Command-T can be added, either as string or
  "as lists
  "let g:CommandTCancelMap='<C-x>'
  "let g:CommandTCancelMap=['<C-x>', '<C-c>']

" }

" Options {
  let g:CommandTMatchWindowAtTop=1
" }

" Key mappings {
  "default mappings
  nnoremap <silent><leader>t :CommandT<cr>
  nnoremap <silent><leader>b :CommandTBuffer<cr>
" }
