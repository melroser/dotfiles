" -*- coding: utf-8 -*-

"  About:
"{
    " Metadata
    " {
        " Name: Vimrc.vim"{"}
        " Author: Robert Melrose <themelroser@gmail.com>
        " Version: 0.2.0
        " Copyright: (C) 2013 Robert R Melrose (aka melroser)
        " License: lgplv3 (http://www.gnu.org/licenses/lgpl.html)
        " Source: [Github](http://www.github.com/melroser/dotfiles)
    " }
    " Decription
    " {
        " This Vim configuration file has been optimized for CLI Python development
        " This file is loaded from the user's home directory.
    " }
"}

" General Settings:
" {
    " ---------- Initialization--------------------
    " {
        set modelines=4                 " Look for modeline cmd
    " }
    " ---------- Vundle Config --------------------
    " {
        " Setup
        set nocompatible        " Must be set before vundle configured
        filetype off            " Disable filetype checking
        set rtp+=~/.vim/bundle/Vundle.vim
        call vundle#begin()

        " let Vundle manage Vundle, required
        Plugin 'gmarik/Vundle.vim'

        " Load plugins from vundles.vim
        if filereadable(expand("~/.vim/vundles.vim"))
            source ~/.vim/vundles.vim
        endif

        " Teardown
        call vundle#end()            " required
        filetype plugin indent on    " required

        " To ignore plugin indent changes, instead use:
        "filetype plugin on
        "
        " Brief help
        " :PluginList          - list configured plugins
        " :PluginInstall(!)    - install (update) plugins
        " :PluginSearch(!) foo - search (or refresh cache first) for foo
        " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
        "
        " see :h vundle for more details or wiki for FAQ
        " Put your non-Plugin stuff after this line

    " }
    " ---------- Basic --------------------
    " {
        syntax on                   " Enable Syntax highlighting

        set autoread                    "Warn about external changes made to file
        set backspace=indent,eol,start      " Backspace works as expected
        set nrformats-=octal

        "Autosaving when idle
        au FocusLost * silent! wall

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
        set novisualbell              " don't beep
        set noerrorbells              " No error beep either
        set nospell                     " Enable spelling checker
        set nrformats=hex

        " show matching braces
        set showmatch
        set matchtime=3

        " Select text with shift
        let macvim_hig_shift_movement = 1

        set ignorecase
        set smartcase      " case sensitive search
        set incsearch
        set ttyfast         " Add the g flag to search/replace by default


        set scrolloff=4         " minimum lines to keep above and below cursor
        set sidescrolloff=5     " minimum lines to keep right of cursor

        if &shell =~# 'fish$'
            set shell=/bin/bash
        endif


        " Completion Settings
        set complete-=i

        " Automatically open and close the popup menu / preview window
        au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
        set completeopt=menu,preview,longest

        set wildmenu                    " Show list of completions
        set wildmode=list:longest,list:full

    " }
    " ---------- GVim/MacVim Settings --------------------
    " {
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


    " }
    " ---------- Undo-history & swap --------------------
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
" }

" Eyecandy:
" {
    " ---------- General --------------------
    " {
        " Fonts:
        if has('gui')
            " set guifont=Monofonto:h24
            " set guifont=Meslo\ LG\ S\ for\ Powerline:h14
            " set guifont=Source\ Code\ Pro\ for\ Powerline:h14
            " set guifont=Anonymous\ Pro\ for\ powerline:h16
            " set guifont=Ubuntu\ Mono\ derivative\ Powerline:h20
            " set guifont=Inconsolata\ for\ Powerline:h24
            " set guifont=Inconsolata\ for\ Powerline:h24
        endif

        " Use relative line numbers
        if exists("&relativenumber")
            set relativenumber
            au BufReadPost * set relativenumber
        endif

        if !has('win32') && (&termencoding ==# 'utf-8' || &encoding ==# 'utf-8')
            set list
            set listchars=tab:▸\ ,trail:▫,extends:>,precedes:<,nbsp:•
        else
            set list
            set listchars=tab:-\>,trail:-,extends:>,precedes:<,nbsp:+
        endif


    " }
    " ---------- Colorscheme --------------------
    " {
        " Allow color schemes to do bright colors without forcing bold.
        if &t_Co == 8 && $TERM !~# '^linux'
            set t_Co=16
        endif


        set background=dark
        "colorscheme Monokai " Load a colorscheme
        colorscheme slate " Load a colorscheme

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
    "
    " }
" }

" Keymaps:
" {
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

        set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks

        map <leader>ff za
        map <leader>fo :set foldlevel=9<CR>
        map <leader>fc :set foldlevel=0<CR>

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

        " Disable arrow key cheating
        map <up>    <nop>
        map <down>  <nop>
        map <left>  <nop>
        map <right> <nop>

        " use spacebar to search
        map <Space> /
        " Toggle highlighted search
        map <leader>hl :set invhlsearch<CR>

        " Allow undo in insert mode
        inoremap <C-U> <C-G>u<C-U>

        " old autocomplete keyboard shortcut
        imap <C-Space> <C-X><C-O>

        noremap <F5> :!/usr/local/binctags -R<CR>               "Generate ctags with F5

        let g:lt_location_list_toggle_map = '<leader>ll'
        let g:lt_quickfix_list_toggle_map = '<leader>ql'

        let g:lt_height = 5

        " Quickly edit/reload the vimrc file
        nmap <silent> <leader>ev :e $MYVIMRC<CR>
        nmap <silent> <leader>sv :so $MYVIMRC<CR>
    " }
" }

" Plugins:
" {
    " ---------- Airline --------------------
    " {
        let g:airline_powerline_fonts = 1
        "let g:airline_theme = 'base16'
        "let g:airline_theme = 'wombat'
        "let g:airline_theme = 'solarized'
        "let g:airline_theme = 'sol'
        let g:airline_theme = 'molokai'
        "let g:airline_theme = 'sol'
        "let g:no_power_fonts=1
        "if !exists('g:no_power_fonts')
            " Use the default airline symbols
            "let g:airline_left_sep='›'  " Slightly fancier than '>'
            "let g:airline_right_sep='‹' " Slightly fancier than '<'
        "endif
    " }
    
    " ---------- Airline-Tomato --------------------
    " {
        "let g:tomato#interval = 60*60
        "let g:tomato#rest_time = 20*60
        "let g:tomato#auto_reset_num = 24
        "let g:tomato#remind = "☻"
        "let g:tomato#restinfo = "☺"
    " }
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
        "let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
    " }
    " ---------- Indent Lines --------------------
    " {
        let g:indentLine_char = '¦'
        let g:indentLine_color_term = 239
        let g:indentLine_color_gui = '#A4E57E'
        let g:indentLine_showFirstIndentLevel=0
    " }
        " ---------- Yankring --------------------
    " {
        nnoremap <silent> <leader>yy :YRShow<CR>
        let g:yankring_history_dir = '$HOME/.config/vim/persistance'
        let g:yankring_window_use_right = 1
    " }
        " ---------- Tagbar --------------------
    " {
        let g:tagbar_sort = 1
        nmap <leader>tb :TagbarToggle<CR><c-w>=
        nmap <leader>tl :TlistToggle<CR>
        let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
    " }
" }

" Filetype Settings:
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
            if exists('g:filetype_javascript')
            endif
    " }
    " ---------- Python --------------------
    " {
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

        " Always switch to the current file directory
        autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif

        " ???
        augroup resCur
            autocmd!
            autocmd BufWinEnter * call ResCur()
        augroup END

    " }
    " ---------- C++ --------------------
    " {
        if exists('g:filetype_c++')
            set exrc
            set secure
            set tabstop=4
            set softtabstop=4
            set shiftwidth=4
            set noexpandtab
            set colorcolumn=110
            highlight ColorColumn ctermbg=darkgray
            augroup project
                autocmd!
                autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
            augroup END


            let &path.="src/include,/usr/include/AL,"
            set includeexpr=substitute(v:fname,'\\.','/','g')
            " ='-I'.substitute(&path, ',', '\n-I', 'g')<CR>p
            set makeprg=make\ -C\ ../build\ -j9
            nnoremap <F5> :!./my_great_program<cr>
            nnoremap <F4> :make!<cr>
        endif


    " }
" }

" Utilities:
" {
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
    " ---------- Macros: --------------------
    " {

        let @l= '079lF ajj'

    " }
    " ---------- Shortcuts --------------------
    " {
        " % Highlights till end of line
        noremap % v$

    " }
    " ---------- SubSetting --------------------
    " {
    " }
" }

" Modlines:
" {
    " mvim: set nospell:
    " vim: set foldmarker={,} foldlevel=0 foldmethod=marker nospell:
    " vi: set nospell:
" }
