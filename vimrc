" Notes 
" {
    "vim: set foldmarker={,} foldlevel=0 foldmethod=marker spell:
    "Javo's vimrc, based on Steve Francia's vimrc.
	"Steve Francia's site http://spf13.com
" }

" Environment 
" {
	" Basics 
	" {
		set nocompatible 		"must be first line
		filetype off 
	" }

	" Setup Bundle Support 
	" {
		" The next two lines ensure that the ~/.vim/bundle/ system works
		runtime! autoload/pathogen.vim
		silent! call pathogen#helptags()
		silent! call pathogen#runtime_append_all_bundles()
		filetype indent plugin on
		syntax on 						"syntax highlighting
	" }

	" Behaivor 
	" {
		"backspace for dummys
		set backspace=indent,eol,start	
		"Line numbers on
		set nu							
		"lines to scroll when cursor leaves screen
		set scrolljump=5 				
		"minimum lines to keep above and below cursor
		set scrolloff=3 				
	" }

	" Misc
	" {
		"only show 15 tabs
		set tabpagemax=15		
		"display the current mode
		set showmode            
		"Vim 7.3 onry
		"set relativenumber				
		if !has('win32') && !has('win64')
			"Make arrow and other keys work
			set term=$TERM	
		endif
		"automatically enable mouse usage
		set mouse=a						
		"always switch to the current file directory.. Messes with some plugins,
		"set autochdir 					
		scriptencoding utf-8
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
		"persistent undo Vim 7.3 onry
		set undofile                   
		"maximum number of changes that can be undone
		set undolevels=1000 
		"maximum number lines to save for undo on a buffer
		set undoreload=10000 
		"spell checking on
		"set spell 		 	        	
		set hidden
	" }

	" Setting up the directories 
	" {
		" Backup specific dir
		set backupdir=$HOME/.vim/.vimbackup/ 
		" Same for undo files
		set undodir=$HOME/.vim/.vimundo/
		" Same for swap files
		set directory=$HOME/.vim/.vimswap/ 	
		" same for view files
		set viewdir=$HOME/.vim/.vimviews/ 	
			"make vim save view (state) (folds, cursor, etc)
		au BufWinLeave * silent! mkview   
		"make vim load view (state) (folds, cursor, etc)
		au BufWinEnter * silent! loadview 
	" }

	" omnicomplete
	" {
		au FileType python set omnifunc=pythoncomplete#Complete
		au FileType php set omnifunc=phpcomplete#CompletePHP
		au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
		au FileType html set omnifunc=htmlcomplete#CompleteTags
		au FileType css set omnifunc=csscomplete#CompleteCSS
		au FileType xml set omnifunc=xmlcomplete#CompleteTags
	" }
	" }

" General 
" {
	" Search & replace settings 
	" {
		"makes search regexes behave normally (a la python,perl)
		nnoremap / /\v
		vnoremap / /\v
		set showmatch					"show matching brackets/parenthesis
		set incsearch					"find as you type search
		set hlsearch					"highlight search terms
		set ignorecase					"case insensitive search
		set smartcase					"case sensitive when uc present
		"removes highlighted matches of a search
		nnoremap <leader>9 :noh<cr> 
		set gdefault "makes a replaces behave globally by default
	" }
" }

" [G]Vim [G]UI 
" {
	" Appearance 
	" {
		"GUI
		if has("gui_running")
			set go-=T
			set go-=m
			set go-=r
			set go-=l
		endif
		"# of colors
		set t_Co=256
		"background color
		"set background=light
		"colorscheme 
		color jellybeans 
		"highlight current line
		set cursorline  		
		"highlight bg color of current line
		hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
	" }

	" ruler and command settings 
	" {
		if has('cmdline_info')
			set ruler                  	"show the ruler
			set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) "a ruler on steroids
			set showcmd                	"show partial commands in status line and
							"selected characters/lines in visual mode
		endif
	" }

	" status line settings
	" {
		if ! has('statusline')
			set laststatus=2
			"Broken down into easily includeable segments
			"set statusline=%<%f\     "Filename
			"set statusline+=%w%h%m%r "Options
			"set statusline+=%{fugitive#statusline()} " Git Hotness
			"set statusline+=\ [%{&ff}/%Y]            "filetype
			"set statusline+=\ [%{getcwd()}]          "current dir
			"set statusline+=\ [A=\%03.3b/H=\%02.2B] "ASCII / Hexadecimal value of char
			"set statusline+=%=%-14.(%l,%c%V%)\ %p%%  "Right aligned file nav info
		endif
	" }

	" Menu display settings
	" {
		set wildmenu					"show list instead of just completing
		set wildmode=list:longest,full	"comand <Tab> completion, list matches, then longest common part, then all.
	" }

	" Layout Settings 
	" {
		"No extra spaces between rows
		set linespace=0					
		"windows can be 0 line high 
		set winminheight=0				
	" }
" }

" Formatting 
" {
	" Wrap settings
	" {
		set whichwrap=b,s,h,l,<,>,[,]	"backspace and cursor keys wrap to
		set nowrap                     	" wrap long lines
	" }

	" Indent settings
	" {
		set autoindent                 	" indent at the same level of the previous line
		set shiftwidth=4               	" use indents of 4 spaces
		set noexpandtab 	       		" tabs are tabs, not spaces
		set tabstop=4 					" an indentation every four columns
	" }
" }

" Key Mappings 
" {
	" Misc
	" {
		"change map leader (default \)
		let mapleader = 'm'
		"Pasar a ex mode
		nnoremap <space> :
		"clear the terminal
		nnoremap <silent><leader>1 :!clear<cr>
		" Yank from the cursor to the end of the line, to be consistent with C and D.
		nnoremap Y y$
		" For when you forget to sudo.. Really Write the file.
		cmap w!! w !sudo tee % >/dev/null
		" visual shifting (does not exit Visual mode)
		vnoremap < <gv
		vnoremap > >gv 
	" }

	" File Operations
	" {
		" Save, quit, etc
		nnoremap <silent>,w :w <cr>
		nnoremap <silent>,q :q <cr>
		nnoremap <silent>,wq :q <cr>
		nnoremap <silent>,wqa :q <cr>
	" }

	" Windows an tabs movement
	" {
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
		map <S-H> gT
		map <S-L> gt
	" }

	" windows and tabs layout & creation 
	" {
		nnoremap <silent><leader>s :split <cr>
		nnoremap <silent><leader>vs :vsplit <cr>
		" create tabs
		nnoremap <silent>tn :tabnew <cr>
	" }

	" Shift key fixes
	" {
		cmap W w
		cmap WQ wq
		cmap wQ wq
		cmap Q q
		cmap Tabe tabe
	" }

	" Shortcuts
	" {
		" Change Working Directory to that of the current file
		cmap cwd lcd %:p:h <cr>
		cmap cd. lcd %:p:h <cr>
		cmap cdh cd /home/javo/ <cr>
		cmap cdd cd /home/javo/Documents <cr>
		cmap cdw cd /home/javo/workspace <cr>
		cmap cdww cd /home/javo/workspace/www <cr>
		cmap cdwp cd /home/javo/workspace/www/php <cr>
		cmap cdwj cd /home/javo/workspace/www/joomla <cr>
		cmap cdwd cd /home/javo/workspace/www/drupal <cr>
		cmap cdwm cd /home/javo/workspace/www/magento <cr>
		cmap cdww cd /home/javo/workspace/www/wordpress <cr>
		cmap cdy cd /home/javo/workspace/python <cr> 
		cmap cdb cd /home/javo/workspace/bash <cr> 
		cmap cdc cd /home/javo/conf.d/ <cr>
		cmap cdr cd / <cr>
		cmap cdre cd /etc <cr>
		cmap cdru cd /usr <cr>
	" }
" }

" Plugins Sections
" {
	" NERD Tree
	" {

		" Key mappings
		" {
			nnoremap <silent>,t :NERDTreeToggle<CR>
			map <leader>e :NERDTreeFind<CR>
			nnoremap <silent><leader>nt :NERDTree 
		" }

		" Options
		" {
			let NERDTreeShowBookmarks=1
			let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
			let NERDTreeChDirMode=0
			let NERDTreeQuitOnOpen=1
			let NERDTreeShowHidden=0
			let NERDTreeKeepTreeInNewTab=1
		" }
	" }

	" NERD Commenter
	" {
	" }

	" Ctags 
	" {
		" Options
		" {
			set tags=./tags;/,~/.vimtags
		" }
	" }

	" Command-T
	" {
		"Key mappings
		" {
			nnoremap <silent><leader>t :CommandT<cr>
			nnoremap <silent><leader>tf :CommandTFlush<cr>
		" }
	" }

	" Zencoding
	" {
		" Options
		" {
			let g:uset_zen_leader_key = ","
		" }
	" }

	" Tag list Too
	" {
		" Options
		" {
			"let Tlist_Ctags_Cmd =
			let Tlist_Auto_Open = 0
			let Tlist_WinWidth = 30
			let Tlist_Sort_Type = "name" "order he tags will be sorted by their
			let TagList_title = "TagList"
			let TaglistTooPosition = 0
		" }

		" Key mappings
		" {
			nnoremap <silent>,l :TlistToo<cr>
		" }
	" }

	" Fugitive
	" {
		" Mappings
		" {
			nnoremap <silent><leader>gs :Gstatus<cr>
			nnoremap <silent><leader>gl :Glog<cr>
			nnoremap <silent><leader>gll :Git reflog<cr>  
			nnoremap <silent><leader>gw :Gwrite<cr>
			nnoremap <silent><leader>gr :Gread
			nnoremap <silent><leader>gc :Gcommit<cr>
			nnoremap <silent><leader>gbl :Git branch<cr>
			nnoremap <silent><leader>gb :Git checkout -b 
			nnoremap <silent><leader>gk :Git checkout 
			nnoremap <silent><leader>gm :Git merge  
			nnoremap <silent><leader>gd :Gdiff<cr>  
			nnoremap <silent><leader>gdd :Gdiff 
			nnoremap <silent><leader>gi :Git 
		" }
	" }

	" Easy-Motion
	" {
		" Options
		" {
			let g:EasyMotion_mapping_t  = '\t'
		" }
	" }
" }

" Functions 
" {
	"Move current tab to left
	" {
		function! MyTabLeft()
		   let tab_number = tabpagenr() - 1
		   if tab_number == 0
			  execute "tabm" tabpagenr('$') - 1
		   else
			  execute "tabm" tab_number - 1
		   endif
		endfunction
		nnoremap <silent><S-n> :execute MyTabLeft()<cr>
	" }

	"Move current tab to right
	" {
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
	" }

" }
