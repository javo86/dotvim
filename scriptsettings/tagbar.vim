"Tagbar Plugin Settings

"Doc {
  "TB = TagBar
  "Commands {
    ":TagbarOpen
    "Open the Tagbar if it is closed. In case it is already open jump to it.

    ":TagbarClose
    "Close the Tagbar window if it is open.

    ":TagbarToggle
    "Open the Tagbar window if it is closed or close it if it is open.

    ":TagbarOpenAutoClose
    "Open the Tagbar window and close it on tag selection, regardless of the
    "setting of |g:tagbar_autoclose|. If it was already open jump to it.

    ":TagbarSetFoldlevel [number]
    "Set the foldlevel of the tags of the current file to [number]. The
    "foldlevel of tags in other files remains unaffected. Works in the same way
    "as 'foldlevel'.

    ":TagbarShowTag
    "Open the parent folds of the current tag in the file window as much as
    "needed for the tag to be visible in the Tagbar window.
  "}

  "Settings {

    "*g:tagbar_ctags_bin*
    "Use this option to specify the location of your ctags executable. Only needed
    "if it is not in one of the directories in your $PATH environment variable.
    "Default: empty
    "let g:tagbar_ctags_bin = 'PATH'

    "*g:tagbar_left*
    "By default TB appears on right side, set this to 1 for TB to appear on left
    "Default: 0
    "let g:tagbar_left = 1

    "*g:tagbar_width*
    "Sets the TB window in characters
    "Default: 40
    "let g:tagbar_width = 30

    "*g:tagbar_autoclose*
    "If set to 1, TB will close when jumping to a tag
    "Default: 0
    "let g:tagbar_autoclose = 1

    "*g:tagbar_autofocus*
    "If set to 1, the cursor will move to the TB window when it is opened
    "Default: 0
    "let g:tagbar_autofocus = 1

    "*g:tagbar_sort*
    "If set to 1, tags are sorted according to their name, if set to 0, tags
    "will be sorted according to their position in the source code
    "Default: 1
    "let g:tagbar_sort = 0

    "*g:tagbar_compact*
    "If set to 1, the help at top wont be showed
    "Default: 0
    "let g:tagbar_compact = 1

    "*g:tagbar_expand*
    "If set to 1 vim window will be expanded by the widht of the TB window
    "Default: 0
    "let g:tagbar_expand = 1

    "*g:tagbar_singleclick*
    "If set to 1, a single clicks is used to jump to the tag definition
    "Default: 0
    "let g:tagbar_singleclick = 1
    "
    "*g:tagbar_foldlevel*
    "Sets the fold level, if a fold has a higher level the TB window will be closed
    "Default: 99
    "let g:tagbar_foldlevel = 2

    "*g:tagbar_usearrows*
    "By default TB uses arrows instead of + / - in unix systems
    "{Windows only} Default: 0
    "let g:tagbar_usearrows = 1

    "*g:tagbar_autoshowtag*
    "If set to 1, TB will open folds if a tag is within a fold
    "let g:tagbar_autoshowtag = 1
    "Default: 0

    "*g:tagbar_systemenc*
    "Used if the OS encoding is different from vims
    "Default: value of 'encoding'
    "let g:tagbar_systemenc = 'cp936'

  "}

"}

"Options {
  let g:tagbar_width = 25
	let g:tagbar_compact = 1
	let g:tagbar_autoshowtag = 1
  let g:tagbar_autofocus = 1
" }

"Mappings {
  nnoremap <silent><leader>tb :TagbarOpenAutoClose<CR>
"}
