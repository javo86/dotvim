" Doc {
  "NT = NERDTree 
  "Turn NERDTree Off (default: 0)
  "let loaded_nerd_tree=1
  "
  "*'NERDChristmasTree'*
  "If set to 1<Leader>Extra highlightings are added to the NERDTree (default: 1)
  "let NERDChristmasTree=1 
  " 
  "*'NERDTreeAutoCenter'*
  "If set to 1<Leader> NT 
  "let NERDTreeAutoCenter=1
  "
  "*'NERDTreeAutoCenterThreshold'*
  "Controls sensitivity of NT auto centering (default: 3)
  "let NERDTreeAutoCenterThreshold=3
  "
  "*'NERDTreeCaseSensitiveSort'*
  "By default nodes in NT doesnt appear in case sensitive order<Leader> changed this
  "setting to 1 to change the behaivor (default: 0)
  "let NERDTreeCaseSensitiveSort=1
  "
  "*'NERDTreeChDirMode'*
  "Depending on value<Leader> cwd is changed when using NT (default 0)
  "If set to 0<Leader> cwd is never changed
  "If set to 1<Leader> cwd is set to the specified path when starting NT
  "If set to 2<Leader> cwd is set to the current NT root
  "let NERDTreeChDirMode=2
  "
  "*'NERDTreeHighlightCursorline'*
  "If set to 1 the current buffer line of the NT will be highlited (default: 1)
  "let NERDTreeHighlightCursorline=1
  "
  "*'NERDTreeHijackNetrw'*
  "If set to 1<Leader> :edit will invoke a secondary NT in the target window 
  "(default: 1)
  "let NERDTreeHijackNetrw=1
  "
  "*'NERDTreeIgnore'*
  "Holds a list of the files that NT should ignore
  "let NERDTreeIgnore=['\.git'<Leader>'\.swp']
  "
  "*'NERDTreeBookmarksFile'*
  "Contains the path where NT bookmarks should be saved 
  "Default: /home/javo/.NERDTreeBookmarks
  "let NERDTreeBookmarksFile
  "
  "*'NERDTreeMouseMode'*
  "Determines NT behaivor to mouse clicks
  "1 = double click required to open node
  "2 = double click required to open files<Leader> 1 click required to open directories
  "3 = Single click opens any node (default 1)
  "let NERDTreeMouseMode=2
  "
  "*'NERDTreeQuitOnOpen'*
  "If set to 1<Leader> NT's window will close after a node is open (Default: 0)
  "let NERDTreeQuitOnOpen=1
  "
  "*'NERDTreeShowBookmarks'*
  "If set to 1<Leader> the bookmarks table will be displayed (default: 0)
  "let NERDTreeShowBookmarks=1
  "
  "*'NERDTreeShowFiles'*
  "If set to 1 files are displayed on NT's window<Leader> else only dirs are displayed
  "(Default: 1)
  "let NERDTreeShowFiles=0
  "
  "*'NERDTreeShowHidden'*
  "If set to 1 hidden files "dot files" will be displayed in NT's window
  "(Default: 0)
  "let NERDTreeShowHidden=1
  "*'NERDTreeShowLineNumbers'*
  "If set to 1 line numbers will bee displayed on NT's window
  "let NERDTreeShowLineNumbers=
  "
  "*'NERDTreeSortOrder'*
  "Contains a list of regex which are used to specify the order of nodes under
  "their parent default Default: ['\/$'<Leader> '*'<Leader> '\.swp$'<Leader>  '\.bak$'<Leader> '\~$']
  "The regex '\/$' should be used to match directory nodes.
  "let NERDTreeSortOrder=['\/$'<Leader> '*'<Leader> '\.swp$'<Leader>  '\.bak$'<Leader> '\~$']
  "
  "*'NERDTreeStatusline'*
  "Defines the statusline for NT's window
  "Default: %{b:NERDTreeRoot.path.strForOS(0)}
  "let NERDTreeStatusline=%{b:NERDTreeRoot.path.strForOS(0)}
  "
  "*'NERDTreeWinPos'*
  "Determines where NT's window is to be placed on the screen
  "Default: left othe rposible value = right
  "let NERDTreeWinPos=right
  "
  "*'NERDTreeWinSize'*
  "Sets NT's window size when its loaded Default: 31
  "let NERDTreeWinSize=40
  "
  "*'NERDTreeMinimalUI'*
  "If set to 1<Leader> disables the Bookmarks label and Press ? for help text
  "Default: 0
  "let NERDTreeMinimalUI=1
  "
  "*'NERDTreeDirArrows'*
  "If set to 1<Leader> uses arrows instead of (|) for the NT's UI
  "let NERDTreeDirArrows=1
" }

" Options {
  let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git',
              \'\.hg','\.svn','\.bzr']
  let NERDTreeChDirMode=2
  let NERDTreeQuitOnOpen=1
  let NERDTreeDirArrows=1
  let NERDTreeMinimalUI=1
" }

" Key mappings {
  nnoremap <silent><Leader>to :NERDTreeToggle<CR>
  map <silent><Leader>e :NERDTreeFind<CR>
  nnoremap <silent><Leader>nt :NERDTree 
  nnoremap <silent><Leader>ntb :NERDTreeFromBookmark 
" }

