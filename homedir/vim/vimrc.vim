" -*- coding: utf-8 -*-

"  Name: Vimrc.vim"{"}
"  Author: Robert Melrose <themelroser@gmail.com>
"  Version: 0.2.0
"  Copyright: (c) Robert Melrose 2013
"  License: lgplv3 (http://www.gnu.org/licenses/lgpl.html)
"  Source: [Bitbucket](http://www.bitbucket.com/themelroser/dotfiles)


"  Readme:
"  {
"
"    This Vim configuration file has been optimized for CLI Python development 
"    This file is loaded from the vim directory 
"    (Actual location: ~/Dropbox/dotfiles/scripts/vim/vimrc.vim) "
"
"    Based on Vim-Latex suite.
"    Only contains latex command which have corresponding unicode chars.
"    Fixed some incorrect mapping of Vim-Latex suite:
"    (\bigodot \bigoplus \bigotimes \long...arrow \iint ...)
"
"    e.g:
"
"    You can use Vim-Latex suite to check these command.
"    or this pdf of math symbols.
"    http://amath.colorado.edu/documentation/LaTeX/Symbols.pdf
"
" }


" Initialization:
" {
"
    " ---------- Startup Settings --------------------
    " { Critical settings to be run first

        set nocompatible                " Must be first line
        set modelines=4                 " Look for modeline cmd

    " }

    " ---------- Vundle Settings --------------------
    " { Load plugin's listed in $VIMDIR/bundles.vim

        " Configuration
        filetype off                    " Disable filetype checking

        set rtp+=~/.vim/bundle/Vundle.vim              "Add Vundle to the runtime path
        call vundle#rc("~/.vim/bundle")              "Specify Vundle directory
        if filereadable(expand("~/.vim/vundles.vim"))
            source ~/.vim/vundles.vim
        endif

        filetype plugin indent on       " Enable filetype detection
    " }
"
" }


" General:
" {

    " ---------- Basic --------------------
    " {
        syntax on                   " Enable Syntax highlighting

        if !has('gui')
            set term=$TERM                      " Make arrow and other keys work
        endif

        if &encoding ==# 'latin1' && has('gui_running')
            set encoding=utf-8
        endif

        if has ('gui')
            "set fuoptions=maxvert,maxhorz
            au GUIEnter * set fullscreen
            set wildignorecase
        endif

        if has("gui_macvim")
            set macmeta
        endif

        set autoread                    "Warn about external changes made to file
        set backspace=indent,eol,start      " Backspace works as expected
        set nrformats-=octal

        "Autosaving when idle
        au FocusLost * silent! wall

        "set timeout timeoutlen=1000 ttimeoutlen=100
        "set <F13>=jj
        "imap <F13> <esc>

        "set ttimeout
        "set ttimeoutlen=50

        " misc settings
        " set ff = unix        "file format detection order
        " set ffs = unix,dos    " Use Unix as the standard file type
        " set shell = /bin/zsh              " Set default to Zsh

        set smarttab                            " Be smart when using tabs
        set autoindent                          " Match indentation with previous line
        set nowrap                              " Disable word-wrap

        set cursorline                  " Highlight current line
        set showcmd                     " Show cmd info in status bar right
        set showmode                    " Show mode in status bar left

        set shortmess+=filmnrxoOtT                              " Abbrev. of messages (avoids 'hit enter')
        set viewoptions=folds,options,cursor,unix,slash         " Better Unix / Windows compatibility
        set virtualedit=onemore                                 " Allow for cursor beyond last character
        set hidden                                              " Allow buffer switching without saving

        " this makes the color after the textwidth column highlighte
        set textwidth=160
        set expandtab                           " Spaces instead of TAB
        set tabstop=4                           " Hard TAB displays as 4 columns
        set shiftwidth=4                       " Selection indent 4 spaces
        set softtabstop=2                       " Insert/delete 4 spaces when hitting  BACKSPACE
        set shiftround                          " Round indent to multiple of 'shiftwidth'

        "match ErrorMsg '\%>120v.\+'
        "set colorcolumn=+1



        " Disable scrollbars
        set guioptions-=r
        set guioptions-=R
        set guioptions-=l
        set guioptions-=L

        scriptencoding utf-8            " Use English encoding
        set number                      " Enable Line numbers
        set ruler                       " Show the ruler
        set mouse=a                   " Enable mouse
        set mousehide                 " Auto-mide mouse when typing
        set noerrorbells              " No error sounds
        set nospell                     " Enable spelling checker
        set nrformats=hex

    " }

    " ---------- Copy & Paste --------------------
    " {


        " Copy and Paste in GUI Vim
        if has ('x') && has ('gui') " On Linux use + register for copy-paste
            set clipboard=unnamedplus

        elseif has ('gui')          " On mac and Windows, use * register for copy-paste
            set clipboard=unnamed
        endif

        " Auto toggle paste mode (OSX Terminal Only)
        let &t_SI .= "\<Esc>[?2004h"
        let &t_EI .= "\<Esc>[?2004l"

        inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()


        "hi MatchParen    cterm=reverse ctermfg=yellow ctermbg=NONE


        "" Use system clipboard for yank/paste
        "if has('unnamedplus')                                   " On X11, 2 clipboards standard and selection
                "set clipboard=unnamedplus,unnamed
        "else                                                    " selection clipboard only
                "set clipboard+=unnamed
        "endif

        " Use Q for formatting the current paragraph (or selection)
        "vmap Q gq
        "nmap Q gqap

    " Disable arrow key cheating
        map <up>    <nop>
        map <down>  <nop>
        map <left>  <nop>
        map <right> <nop>

        "map /   <nop>

    " }

    " ---------- Making Directorys --------------------
    " {

        " Keep undo history across sessions, by storing in file. Only works all the time.
        set noswapfile
        set nobackup
        set viminfo='100,:200,<50,s10,h

        if &history < 1000
            set history=1000
        endif
        if &tabpagemax < 50
            set tabpagemax=50
        endif
        if !empty(&viminfo)
            set viminfo^=!
        endi

        "set directory=~/.config/vim/.vimsinfo   " where to put swap files.

        if has('persistent_undo')
            silent !mkdir ~/.config/vim/undodir > /dev/null 2>&1
            set undodir=~/.config/vim/undodir
            set undofile
            set undolevels=1000         " Maximum number of changes that can be undone
            set undoreload=10000        " Maximum number lines to save for undo on a buffer reload
        endif


    " }

    " ---------- SubSetting --------------------
    " {

    " }

    " ---------- SubSetting --------------------
    " {

    " }

    " ---------- SubSetting --------------------
    " {

    " }

" }


" Eyecandy:
" {

    " ---------- General --------------------
    " {

        " Backup and swap files



        " Allow undo in insert mode
        inoremap <C-U> <C-G>u<C-U>

        " switch between tabs with cmd+1, cmd+2,..."
        "map <D-1> 1gt
        "map <D-2> 2gt
        "map <D-3> 3gt
        "map <D-4> 4gt
        "map <D-5> 5gt
        "map <D-6> 6gt
        "map <D-7> 7gt
        "map <D-8> 8gt
        "map <D-9> 9gt

        " until we have default MacVim shortcuts this is the only way to use
        " it in
        " insert mode
        "imap <D-1> <esc>1gt
        "imap <D-2> <esc>2gt
        "imap <D-3> <esc>3gt
        "imap <D-4> <esc>4gt
        "imap <D-5> <esc>5gt
        "imap <D-6> <esc>6gt
        "imap <D-7> <esc>7gt
        "imap <D-8> <esc>8gt
        "imap <D-9> <esc>9gt

        " Command Make will call make and then cwindow which
        " opens a 3 line error window if any errors are found.
        " If no errors, it closes any open cwindow.
        ":command -nargs=* Make make <args> | cwindow 3

        " Select text with shift
        let macvim_hig_shift_movement = 1

        set ignorecase
        set smartcase      " case sensitive search
        set incsearch
        set ttyfast         " Add the g flag to search/replace by default

        " use spacebar to search
        map <Space> /
        " Toggle highlighted search
        map <leader>hl :set invhlsearch<CR>


        set scrolloff=4         " minimum lines to keep above and below cursor
        set sidescrolloff=5     " minimum lines to keep right of cursor
        "set display+lastline

    if &shell =~# 'fish$'
        set shell=/bin/bash
    endif


	if !has('win32') && (&termencoding ==# 'utf-8' || &encoding ==# 'utf-8')
    set list
    "set listchars="tab:\u21e5 ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u00b7"
		set listchars=tab:▸\ ,trail:▫,extends:>,precedes:<,nbsp:•
		"set listchars=tab:⇁\ ,trail:□,extends:,precedes:,nbsp:•   " ·∫↓ ⌒   ▫ > ⇒  ← ⟵  ·⇒ •↷ ↻ ↓ ↼  ↝ ⊸ ⋇ ⇠   ≺ ▶️  ⋄⊸
		"set listchars_eol:↵,tab:\ ,trail:□,extends:,precedes:,nbsp:⇠ 	  " ·∫↓ ⌒   ▫ > ⇒  ← ⟵  ·⇒ ↷ ↻  ↼  ↝  ⋇ ⇠   ≺ ▶️  
    else
        "set list
        "set listchars=tab:-\>,trail:-,extends:>,precedes:<,nbsp:+
    endif




    " }
    "
    " ---------- Colorscheme --------------------
    " {

        set background=dark
        "colorscheme slate
        colorscheme xoria256  " Load a colorscheme
        " Allow color schemes to do bright colors without forcing bold.
        if &t_Co == 8 && $TERM !~# '^linux'
            set t_Co=16
        endif

        "hi NonText none
        "hi SpecialKey ctermfg=3
        "hi NonText ctermfg=8

        " Completion Settings
        set complete-=i

        " Stop completion with enter, in addition to default ctrl+y
        " imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"

        "hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
        "hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
        "hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE

        "colors and settings of autocompletion
          "highlight Pmenu ctermbg=4 guibg=LightGrey
          "highlight PmenuSel ctermbg=8 guibg=LightMagenta gu
          "highlight PmenuSbar ctermbg=7 guibg=DarkGray
                    "highlight PmenuThumb guibg=Black

        " Automatically open and close the popup menu / preview window
        au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
        set completeopt=menu,preview,longest

        " automatically close autocompletion window
        "autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
        "autocmd InsertLeave * if pumvisible() == 0|pclose|endif

        " old autocomplete keyboard shortcut
        imap <C-Space> <C-X><C-O>

        set wildmenu                    " Show list of completions
        set wildmode=list:longest,list:full
        "set wildmode=longest,list:longest
        "set wildmode=longest:full,full  " complete list match, longest common part, then all

        noremap <F5> :!/usr/local/binctags -R<CR>               "Generate ctags with F5

        "set complete=.,b,u,]
        "set completeopt=longest,menu

        " Disable output and VCS files
        "set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
        " Disable archive files
        "set wildignor+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
        " Ignore bundler and sass cache
        "set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
        " Ignore librarian-chef, vagrant, test-kitchen and Berkshelf cache
        "set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*
        " Ignore rails temporary asset caches
        "set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*
        " Disable temp and backup files
        "set wildignore+=*.swp,*~,._*

    " }

    " ---------- Statusline --------------------
    " {
        if has("statusline") && !&cp
          set laststatus=2  " always show the status bar
          " Start the status line
          set statusline=%f\ %m\ %r
          set statusline+=Line:%l/%L[%p%%]
          set statusline+=Col:%v
          set statusline+=Buf:#%n
          set statusline+=[%b][0x%B]
        endif
        "if has('statusline')
            "set laststatus=2        " Broken down into segments
            "set statusline=%<%f\          " Filename
            "set statusline+=%w%h%m%r       " Options
            ""set statusline+=%{fugitive#statusline()}  " Git Hotness
            "set statusline+=\ [%{&ff}/%Y]       " Filetype
            "set statusline+=\ [%{getcwd()}]     " Current dir
            "set statusline+=%=%-14.(%l,%c%V%)\ %p%%    " Right aligned file nav info
        "endif
    "
    " }

    " ---------- SubSetting --------------------
    " {
        " Use relative line numbers
        if exists("&relativenumber")
            set relativenumber
            au BufReadPost * set relativenumber
        endif
    " }

"
" }


" Keymaps:
" {
"
    " ---------- General --------------------
    " {

        inoremap jj <Esc>
        inoremap <C-j> <down>
        inoremap <C-h> <left>
        inoremap <C-l> <right>
        inoremap <C-k> <up>

        " Smart way to move between windows
        map <C-j> <C-W>j
        map <C-k> <C-W>k
        map <C-h> <C-W>h
        map <C-l> <C-W>l

        " 'H' moves to leftmost char 'L' to rightmost
        "map <S-H> ^
        "map <S-L> $

        set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks

        map <leader>ff za
        map <leader>fo :set foldlevel=9<CR>
        map <leader>fc :set foldlevel=0<CR>
        " nmap <leader> : <ESC>




        " Fix common typeing mistakes
        if has("user_commands")
            command! -bang -nargs=* -complete=file E e<bang> <args>
            command! -bang -nargs=* -complete=file W w<bang> <args>
            command! -bang -nargs=* -complete=file Wq wq<bang> <args>
            command! -bang -nargs=* -complete=file WQ wq<bang> <args>
            command! -bang W w<bang>
            command! -bang Wall wa<bang>
            command! -bang WAll wa<bang>
            command! -bang Q q<bang>
            command! -bang Qall qa<bang>
            command! -bang QAll qa<bang>
            command! -bang Wq wq<bang>
            command! -bang WQ wq<bang>
        endif
        cmap Tabe tabe
  
        " Allow saving of files as sudo when I forgot to start vim using sudo.
        cmap w!! w !sudo tee > /dev/null %
        cmap W!! w !sudo tee > /dev/null %

        " Visual shifting (does not exit Visual mode)
        vnoremap < <gv
        vnoremap > >gv

        " Allow using the repeat operator with a visual selection (!)
        " http://stackoverflow.com/a/8064607/127816
        vnoremap . :normal .<CR>
    " }

    " ---------- SubSetting --------------------
    " {
        let g:tagbar_sort = 1
        nmap <leader>tb :TagbarToggle<CR><c-w>=
        nmap <leader>tl :TlistToggle<CR>

        let g:lt_location_list_toggle_map = '<leader>ll'
        let g:lt_quickfix_list_toggle_map = '<leader>ql'

        let g:lt_height = 5


    " }

    " ---------- SubSetting --------------------
    " {

        " Quickly edit/reload the vimrc file
        nmap <silent> <leader>ev :e $MYVIMRC<CR>
        nmap <silent> <leader>sv :so $MYVIMRC<CR>

    " }

" }


" Plugins:
" {

    " ---------- NerdTree --------------------
    " {
        map <leader>nn :NERDTreeToggle<CR>:NERDTreeMirror<CR>
        map <leader>nf :NERDTreeFind<CR>
        nmap <leader>nf :NERDTreeFind<CR>
        let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
        let NERDTreeChDirMode=0
        let NERDTreeQuitOnOpen=1
        let NERDTreeMouseMode=2
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=1
        let g:nerdtree_tabs_open_on_gui_startup=0
    " }

    " ---------- Text Settings --------------------
    " {
        " Symbols:


        "     , , , , , , and    " Satusbar - Powerline


        "    ‹›                         " Prompt arrows


        "    <>                         " Normal ascii


        "    	    	     	          " Vim Helpmenu


        "    ➜

        " Fonts:
        if has('gui')
            set guifont=Monofonto:h24
            "let g:airline_left_sep='›'  " Slightly fancier than '>'
            "let g:airline_right_sep='‹' " Slightly fancier than '<'

            " set guifont=Meslo\ LG\ S\ for\ Powerline:h14
            " set guifont=Source\ Code\ Pro\ for\ Powerline:h14
            " set guifont=Anonymous\ Pro\ for\ powerline:h16
            " set guifont=Ubuntu\ Mono\ derivative\ Powerline:h20
            " set guifont=Inconsolata\ for\ Powerline:h24
            " set guifont=Inconsolata\ for\ Powerline:h24
        endif

        "let g:no_power_fonts=1
        "if !exists('g:no_power_fonts')
            " Use the default airline symbols
            "let g:airline_left_sep='›'  " Slightly fancier than '>'
            "let g:airline_right_sep='‹' " Slightly fancier than '<'
        "endif

        " Airline Theme:
        "let g:airline_theme = 'solarized'

    " }

    " --------- Syntastic --------------------
    " {

        let g:syntastic_check_on_wq = 1
        let g:syntastic_check_on_open = 1

        map <leader>sc :SyntasticCheck<CR>
        map <leader>sr :SyntasticReset<CR>
        map <leader>er :Errors<CR>

        let g:syntastic_error_symbol = '✗'
        let g:syntastic_warning_symbol = '⚠'
        let g:syntastic_always_populate_loc_list = 1

        " Toggle Relative Numbering
        map <leader>rn :set relativenumber<CR>
        map <leader>nr :set norelativenumber<CR>

    " }

    " ---------- You-Complete-Me --------------------
    " {
        nnoremap <F4> :YcmForceCompileAndDiagnostics<CR>
        map <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

        let g:ycm_min_num_of_chars_for_completion=1
        let g:ycm_seed_identifiers_with_syntax = 1
        let g:ycm_add_preview_to_completeopt = 1
        let g:ycm_autoclose_preview_window_after_completion=1

    " }

    " ---------- Indent Lines --------------------
    " {
        let g:indentLine_char = '¦'
        let g:indentLine_color_term = 239
        "nmap <silent> <Leader>ig <Plug>IndentGuidesToggle
        "let g:indentLine_color_term = '#8A95A7'
        "let g:indentLine_color_term = 239
        let g:indentLine_color_gui = '#A4E57E'

        "let g:indentLine_color_gui = '#8A95A7'
        "let g:indentLine_char = '┆ '
        "let g:indentLine_char = '·'
        "let g:indentLine_char = '│'
        "let g:indentLine_char = '⋮'
        "let g:indentLine_enabled=0
        let g:indentLine_showFirstIndentLevel=0
        "let g:indent_guides_color_change_percent = 10
        "let g:indentLine_color_gui = '#A4E57E'
    " }

    " ---------- Vim-Session --------------------
    " {
        "let g:session_autoload = 'no'
    " }

        " ---------- Yankring --------------------
    " {
        nnoremap <silent> <leader>yy :YRShow<CR>
        let g:yankring_history_dir = '$HOME/.config/vim/persistance'
        let g:yankring_window_use_right = 1
    " }

        " ---------- Tagbar --------------------
    " {
        let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
    " }

" }


" Language:
" {

    " ---------- All Files --------------------
    "  {
        if has("autocmd")
            au FileType python let g:filetype_python=1
            au FileType make let g:filetype_make=1
            au FileType vim let g:filetype_vim=1
            au FileType Mardown let g:filetype_markdown=1
            au BufNewFile,BufRead *.json set ft=javascript
        endif
        "}

    " ---------- Makefiles --------------------
    " {
        if exists('g:filetype_make')
            " Use real tabs
            au FileType make setlocal noexpandtab
        endif
    " }

    " ---------- Markdown --------------------
    " {
            " Check Mardown files have the correct filetype and set wrap
        if exists('g:filetype_markdown')
            au FileType markdown call s:setupWrapping()
            au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown
            set expandtab                           " Spaces instead of TAB
            set tabstop=4                           " Hard TAB displays as 4 columns
            set softtabstop=4                       " Insert/delete 4 spaces when hitting  BACKSPACE
            set shiftwidth=4                        " Selection indent 4 spaces
            set shiftround                          " Round indent to multiple of 'shiftwidth'

            set textwidth=80
        endif
    " }

    " ---------- Java Script --------------------
    " {
            " Treat JSON files like JavaScript
        "if exists('g:filetype_javascript')
	"endif
    " }

    " ---------- Python --------------------
    " {
            " run pep8+pyflakes validator
            " autocmd FileType python map <buffer> <leader>8 :call Flake8()<CR>

            " rules to ignore (example: "E501,W293")
            " let g:flake8_ignore=""
            " Auto-remove trailing spaces of python files
            " autocmd BufWritePre *.py mark z | %s/\s\+$//e | 'z

            " don't let pyflakes allways override the quickfix list
            " (and restores cursor position)
            "let g:pyflakes_use_quickfix = 0
            " Python File Settings

            if exists('g:filetype_python')
                au BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
                au BufWritePost * call system("ctag -R")
            endif

        if exists('g:filetype_python')

            " 4 Spaces indentation

            set expandtab                           " Spaces instead of TAB
            set tabstop=4                           " Hard TAB displays as 4 columns
            set softtabstop=4                       " Insert/delete 4 spaces when hitting  BACKSPACE
            set shiftwidth=4                        " Selection indent 4 spaces
            set shiftround                          " Round indent to multiple of 'shiftwidth'

            set textwidth=80
            set foldnestmax=2

            let g:syntastic_python_checkers = ['flake8']
            let g:syntastic_python_flake8_args = '--select=F,C9 --max-complexity=10'

            map <F3> :let g:syntastic_python_checkers=['python']<CR>
            map <F6> :let g:syntastic_python_checkers=['pylint']<CR>
            map <F7> :let g:syntastic_python_checkers=['pyflakes']<CR>
            map <F8> :let g:syntastic_python_checkers=['pep8']<CR>
            map <F9> :let g:syntastic_python_checkers=['flake8']<CR>
            map <F10> :let g:syntastic_python_checkers=['flake8']<CR>
        endif

    " }

    " ---------- Java --------------------
    " {
        au Filetype java set makeprg=ant\ -find\ build.xml
    " Code Folding
        set foldmethod=indent   " Use indentation to set folds
        set foldnestmax=9       " Close all folds on start

    " }

    " ---------- Vim --------------------
    " {
        " Vim File Settings
        if exists('g:filetype_vim')
        endif


        " Remember last location in file, but not for commit messages. see :help last-position-jump
        "au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")\| exe "normal! g`\"" | endif

        " Always switch to the current file directory
        autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif

        augroup resCur
            autocmd!
            autocmd BufWinEnter * call ResCur()
        augroup END

    " }

" }
"

" Utilities:
" {

    " ---------- Shortcuts --------------------
    " {
        " Save a file as root (,W)
        " noremap <leader>W :w !sudo tee % > /dev/null<CR>


        " autoformat the entire file
        "nnoremap <leader>== :normal! gg=G``<CR>

        " % Highlights till end of line
        noremap % v%

        " show matching braces
        set showmatch
        set matchtime=3

        " hi MatchParen cterm=reverse ctermfg=NONE ctermbg=NONE
        "set cursorcolumn

    " }

    " ---------- Functions --------------------
    " {
        "
        function! ResCur()
            if line("'\"") <= line("$")
                normal! g`"
                return 1
            endif
        endfunction


        " Some file types should wrap their text
        function! s:setupWrapping()
            set wrap
            set linebreak
            set nolist
        endfunction


        " Strip trailing whitespace (ss)
        function! StripWhitespace()
            let save_cursor = getpos(".")
            let old_query = getreg('/')
            :%s/\s\+$//e
            call setpos('.', save_cursor)
            call setreg('/', old_query)
        endfunction
        map<leader>sw :call StripWhitespace()<CR>


        function! Incr()
            let a = line('.') - line("'<")
            let c = virtcol("'<")
            if a > 0
                execute 'normal! '.c.'|'.a."\<C-a>"
            endif
            normal `<
        endfunction
        vnoremap <C-a> :call Incr()<CR>

        " Tmux copy and paste
        function! WrapForTmux(s)
            if !exists('$TMUX')
                return a:s
            endif

            let tmux_start = "\<Esc>Ptmux;"
            let tmux_end = "\<Esc>\\"

            return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
        endfunction

        function! XTermPasteBegin()
                set pastetoggle=<Esc>[201~
                set paste
                return ""
        endfunction
    " }

" }

" Macros:
" {

    let @l= '079lF ajj'

" }

" Modeline:
" {
    " mvim: set nospell:
    " vim: set foldmarker={,} foldlevel=0 foldmethod=marker nospell:
    " vi: set nospell:
" }
