" {
" }

"Enviroment {

  "Basics {
    "Disables vi complatiblemust be first line
    set nocompatible
  " }

  "Setup Bundle Support {
    "Needed for pathogen plugin, in the next section is set to on"
    filetype off
    "Lista que contiene los plugins que no se loaderan por pathogen
    let g:pathogen_disabled = [
              \'jsbeutify','neocomplcache',
              \'taglisttoo','todolist',
              \'todo',
      \]
    "Lista que contiene los scripts settings que no se laoderean
    let g:scripts_settings = []
    "The next two lines ensure that the ~/.vim/bundle/ system works
    runtime! autoload/pathogen.vim
    silent! call pathogen#helptags()
    silent! call pathogen#runtime_append_all_bundles()
    filetype indent plugin on
    syntax on
  " }

  "Behaivor {
    "backspace for dummys
    set backspace=indent,eol,start
  " }

  "Misc {
    "Set encoding to utf-8
    scriptencoding utf-8
    "only show 15 tabs
    set tabpagemax=15
    "display the current mode
    set showmode
    "Vim 7.3 onry
    if v:version >= 703
        set relativenumber
    else
        set nu
    endif
    if !has('win32') && !has('win64')
        "Make arrow and other keys work
        set term=$TERM
    endif
    "automatically enable mouse usage
    set mouse=a
    "always switch to the current file directory.. Messes with some plugins
    "set autochdir
    "automatically write a file when leaving a modified buffer
    "set autowrite
    "abbrev. of messages (avoids 'hit enter')
    set shortmess+=filmnrxoOtT
    "better unix / windows compatibility
    set viewoptions=folds,options,cursor,unix,slash
    "allow for cursor beyond last character
    "set virtualedit=onemore
    "backups are nice ...
    set backup
    "Store a ton of history (default is 20)
    set history=1000
    if v:version >= 703
      "persistent undo Vim 7.3 onry
      set undofile
      "maximum number of changes that can be undone
      set undolevels=1000
      "maximum number lines to save for undo on a buffer
      set undoreload=10000
    endif
    "spell checking on
    "set spell
    set hidden
    "make vim save view (state) (folds, cursor, etc)
    au BufWinLeave * silent! mkview
    "make vim load view (state) (folds, cursor, etc)
    au BufWinEnter * silent! loadview
  "}

  "Setting up the directories{
    "Backup specific dir
    set backupdir=$HOME/.vim/.vimbackup/
    " Same for undo files
    set undodir=$HOME/.vim/.vimundo/
    " Same for swap files
    set directory=$HOME/.vim/.vimswap/
    " same for view files
    set viewdir=$HOME/.vim/.vimviews/
  "}

  "omnicomplete {
    au FileType python setlocal omnifunc=pythoncomplete#Complete
    au FileType php setlocal omnifunc=phpcomplete#CompletePHP
    au FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    au FileType html setlocal omnifunc=htmlcomplete#CompleteTags
    au FileType css setlocal omnifunc=csscomplete#CompleteCSS
    au FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  "}
"}

"General {
  "Search & replace settings  {
    "makes search regexes behave normally (a la python,perl)
    nnoremap / /\v
    vnoremap / /\v
    "show matching brackets/parenthesis
    set showmatch
    "find as you type search
    set incsearch
    "highlight search terms
    set hlsearch
    "case insensitive search
    set ignorecase
    "case sensitive when uc present
    set smartcase
    "makes a replaces behave globally by default
    set gdefault
  "}
"}

"Help Section {
  au filetype help set number " no line numbers when viewing help
  au filetype help nnoremap <buffer><cr> <c-]> " Enter selects subject
  au filetype help nnoremap <buffer><bs> <c-T> " Backspace to go back
"}

"User Interface {
  "Behaivor {
    "lines to scroll when cursor leaves screen
    set scrolljump=5
    "minimum lines to keep above and below cursor
    set scrolloff=5
  " }

  "Appearance {
    au InsertEnter * match WhitespaceEOL /\s\+$/
    au InsertLeave * match WhitespaceEOL /\s\+$/
    autocmd ColorScheme * highlight WhitespaceEOL ctermbg=red guibg=red"
    " Highlight end of line whitespace.
    match WhitespaceEOL /\s\+$/
    "background color
    set background=dark
    if has("gui_running")
        set go-=T
        set go-=m
        set go-=r
        set go-=l
        colorscheme solarized
    else
        "# of colors
        set t_Co=256
        "colorscheme
        colorscheme lucius
    endif
    "highlight current line
    set cursorline
    "highlight bg color of current line
    hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
    " Colored column (to see line size violations)
    set colorcolumn=80
  "}

  "ruler and command settings {
    if has('cmdline_info')
      "show the ruler
      set ruler
      "a ruler on steroids
      set rulerformat=%20(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
      "show partial commands in status line and
      set showcmd
    endif
  "}

  "status line settings {
    "Broken down into easily includeable segments
    if has('statusline')
      set laststatus=2
      "Filename
      set statusline=%<%f\
      "Options
      set statusline+=%w%h%m%r
      " Git Hotness
      set statusline+=%{fugitive#statusline()}
      "filetype
      set statusline+=\ [%{&ff}/%Y]
      "current dir
      set statusline+=\ [%{getcwd()}]
      "ASCII / Hexadecimal value of char
      set statusline+=\ [A=\%03.3b/H=\%02.2B]
      "Right aligned file nav info
      set statusline+=%=%-14.(%l,%c%V%)\ %p%%
      "Syntastic statusline
      set statusline+=%#warningmsg#
      set statusline+=%{SyntasticStatuslineFlag()}
      set statusline+=%*
    endif
  "}

  "Menu display settings {
    "show list instead of just completing
    set wildmenu
    " wildmenu format
    set wildmode=list:longest,full
  "}

  "Layout Settings {
    "windows can be 0 line high
    set winminheight=0
  " }
"}

"Formatting  {

  "Misc {
    "No extra spaces between rows
    set linespace=0
    " Set the maximun line width
    set textwidth=79
  "}

  "Wrap settings {
    set whichwrap=b,s,h,l,<,>,[,]	"backspace and cursor keys wrap to
    set wrap
  "}

  "Indent settings {
    "Auto Indent at the same level of the previous line
    set ai
    " Smart Indent useful with autoindent
    set si
    " use indents of 4 spaces
    set shiftwidth=4
    " tabs are spaces
    set expandtab
    " an indentation every four columns
    set softtabstop=4
  "}

"}

"Ctags {
  "Options {
    "This will look in the current directory for 'tags', and work up the
    "tree towards root until one is found.
    set tags=./tags,./../tags,./*/tags
    "set tags=./tags;/,$HOME/vimtags
  "}

  "Mappings {
    "C-\ - Open the definition in a new tab
    map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
    " A-] - Open the definition in a vertical split
    map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
    " Reload ctags
    map <leader>rt :!ctags --extra=+f -R *<cr><cr>
  "}
"}

"Key Mappings  {
  " Misc {
    "change map leader (default \)
    let mapleader = ','
    "Pasar a ex mode
    nnoremap <space> :
    "clear the terminal
    nnoremap <silent><leader>1 :!clear<cr>
    " Yank from the cursor to the end of the line, to be consistent with C
    " and D.
    nnoremap Y y$
    " For when you forget to sudo.. Really Write the file.
    cmap w!! w !sudo tee % >/dev/null
    " visual shifting (does not exit Visual mode)
    vnoremap < <gv
    vnoremap > >gv
    " Wrapped lines goes down/up to next row, rather than next line
    nnoremap j gj
    nnoremap k gk
    " Visually select the text that was last edited/pasted
    nnoremap gV `[v`]`"
    " Delete all buffers but unsaved ones"
    nnoremap <leader>dab :bufdo silent! bdelete<CR>
    " Formatting
    nnoremap <leader>fa 1G=G''
    "Clear highlighting
    nnoremap <leader>L :nohls<CR>
  "}

  "Copy, paste and yank mappings {
    "Copy selection to clipboard
    nnoremap <leader>y "+y
    "Copy everything to clipboard
    nnoremap <leader>Y "*y
    "Paste auto formatted code
    nnoremap <leader>pf p=`]
    "Paste from register 1
    nnoremap <leader>p1 "1p
    "Paste from register 2
    nnoremap <leader>p2 "1p
    "Paste from register 3
    nnoremap <leader>p3 "1p
    "Yank to register 1
    nnoremap ,y1 "1y
    "Yank to register 2
    nnoremap ,y2 "2y
    "Yank to register 3
    nnoremap ,y3 "3y
    "Yank
  "}

  "File Operations {
    "Save, quit, etc
    nnoremap <silent>,w :w <cr>
    nnoremap <silent>,q :q <cr>
    nnoremap <silent>,wq :wq <cr>
    nnoremap <silent>,wqa :wqa <cr>
    imap <c-s> <ESC>:w<cr>a
  "}

  "Windows an tabs movement {
    "Mapping para que alt funcione en vim
    if has("gui_running")
      nnoremap <A-h> :wincmd h<cr>
      nnoremap <A-j> :wincmd j<cr>
      nnoremap <A-k> :wincmd k<cr>
      nnoremap <A-l> :wincmd l<cr>
    else
      nnoremap <C-h> :wincmd h<cr>
      nnoremap <C-j> :wincmd j<cr>
      nnoremap <C-k> :wincmd k<cr>
      nnoremap <C-l> :wincmd l<cr>
    endif
    "use - and + to resize horizontal splits
    map - <C-W>-
    map + <C-W>+

    " and for vsplits with alt-< or alt->
    map <M-,> <C-W>>
    map <M-.> <C-W><
    " Tab movement
    nnoremap <S-H> gT
    nnoremap <S-L> gt
  "}

  "windows and tabs layout & creation  {
    nnoremap <silent><leader>s :split <cr>
    nnoremap <silent><leader>vs :vsplit <cr>
  "create tabs
    nnoremap <silent>tn :tabnew <cr>
  "}

  "Shift key fixes {
    cmap W w
    cmap WQ wq
    cmap wQ wq
    cmap Q q
    cmap Tabe tabe
  "}

  "Shortcuts {
    "Change Working Directory to that of the current file
    cmap cwd lcd %:p:h <cr>
    cmap cd. lcd %:p:h <cr>
    "Edit vimrc
    cmap evm e ~/.vimrc <cr>
  "}
"}

"Functions {
  "Move current tab to left {
    function! MyTabLeft()
      let tab_number = tabpagenr() - 1
      if tab_number == 0
          execute "tabm" tabpagenr('$') - 1
      else
          execute "tabm" tab_number - 1
      endif
    endfunction
    nnoremap <silent><S-n> :execute MyTabLeft()<cr>
  "}

  "Move current tab to right {
    function! MyTabRight()
      let tab_number = tabpagenr() - 1
      let last_tab_number = tabpagenr('$') - 1
      if tab_number == last_tab_number
        execute "tabm" 0
      else
        execute "tabm" tab_number + 1
      endif
    endfunction
    nnoremap <silent><S-m> :execute MyTabRight()<cr>
  "}

  "Clean Extra Spaces{
    fun! CleanExtraSpaces()
      let save_cursor = getpos(".")
      let old_query = getreg('/')
      :%s/\s\+$//e
      call setpos('.', save_cursor)
      call setreg('/', old_query)
    endfun
    map <silent><leader>S <esc>:keepjumps call CleanExtraSpaces()<cr>
  " }

  "Initialize plugins {
    fun! InitializePlugins()
      let yaya=""
    endfun
  " }

" }

"Plugins {
  "Initialize plugin's settings
  source ~/conf.d/dotvim/vim/scriptsettings/ack.vim
  source ~/conf.d/dotvim/vim/scriptsettings/command-T.vim
  "source ~/conf.d/dotvim/vim/scriptsettings/delitmate.vim
  source ~/conf.d/dotvim/vim/scriptsettings/easy-motion.vim
  source ~/conf.d/dotvim/vim/scriptsettings/fugitive.vim
  source ~/conf.d/dotvim/vim/scriptsettings/nerdtree.vim
  source ~/conf.d/dotvim/vim/scriptsettings/snipmate.vim
  source ~/conf.d/dotvim/vim/scriptsettings/syntastic.vim
  source ~/conf.d/dotvim/vim/scriptsettings/zencoding.vim
  source ~/conf.d/dotvim/vim/scriptsettings/tagbar.vim
  source ~/conf.d/dotvim/vim/scriptsettings/task-org.vim
"}
