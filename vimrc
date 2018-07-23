" ----------------------------------------------------
" Vundle
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" ----------------------------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Visual
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-sensible'
Plugin 'aserebryakov/filestyle'

" Search
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/tabman.vim'
Plugin 'dkprice/vim-easygrep'

" Edit
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'gregsexton/MatchTag'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'

" NeoComplete
Plugin 'Shougo/neocomplete.vim'

" JavaScript
Plugin 'othree/javascript-libraries-syntax.vim'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Colorsheme
Plugin 'altercation/vim-colors-solarized'
Plugin 'w0ng/vim-hybrid'

call vundle#end()            " required
filetype plugin indent on    " required

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" ------
" Nerd Tree
" ------
let g:NERDTreeWinPos = "left"
let NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeWinSize=35
let NERDTreeHighlightCursorline=1
nmap <leader><leader> :NERDTreeToggle<cr>
nmap <C-\> :NERDTreeFind<CR>

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" ------
" surround.vim
" ------
" Annotate strings with gettext http://amix.dk/blog/post/19678
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>

" ------
" vim-multiple-cursors
" ------
let g:multi_cursor_next_key="\<C-s>"

" ------
" CTRL-P
" ------
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

" ------
" TagBar
" ------
nmap <F8> :TagbarToggle<CR>

" ------
" Git-gutter
" ------
let g:gitgutter_avoid_cmd_prompt_on_windows = 1
set signcolumn=yes

" ------
" Emmet
" ------
let g:user_emmet_mode='a'
imap <c-e> <c-y>,

" ------
" neocomplete
" ------
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#enable_auto_close_preview = 1
let g:neocomplete#min_keyword_length = 1

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB>
            \ pumvisible() ? "\<C-n>" :
            \ neosnippet#expandable_or_jumpable() ?
            \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" For conceal markers.
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif

" ------
" Syntastic
" ------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ------
" AirLine
" ------
" let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#ctrlspace#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 2
let g:airline_theme = "hybridline"

" ----------------------------------------------------
" General
" ----------------------------------------------------
" Sets how many lines of history VIM has to remember
set history=700

" Set to auto read when a file is changed from the outside
set autoread

" Auto change dir
set autochdir

" Tags
set exrc
set secure

" Copy/paste Ctrl+C/Ctrl+V
vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

" Fast saving
nmap <leader>w :w!<cr>

" Fast editing and reloading of vimrc configs
map <leader>e :e! ~/.vim/vimrc<cr>
autocmd! bufwritepost vimrc source ~/.vim/vimrc

" Allow to copy/paste between VIM instances
" "copy the current visual selection to ~/.vbuf
vmap <Leader>y :w! ~/.vbuf<CR>
" "copy the current line to the buffer file if no visual selection
nmap <Leader>y :.w! ~/.vbuf<CR>
" "paste the contents of the buffer file
nmap <Leader>p :r ~/.vbuf<CR>

" Automatically removing all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" ----------------------------------------------------
" VIM user interface
" ----------------------------------------------------
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
set cursorline

" Avoid garbled characters in Chinese language windows OS
" let $LANG='en'
" set langmenu=en
" source $VIMRUNTIME/delmenu.vim
" source $VIMRUNTIME/menu.vim

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

" Show numbers
set number

" Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
    set mouse=a
endif

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

" Folding
set nofoldenable
" set foldmethod=syntax

" ----------------------------------------------------
" Colors and Fonts
" ----------------------------------------------------
" Enable syntax highlighting
syntax enable

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r,latin1

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
set undofile
set undodir=~/.vim/undo/

" Colorscheme
set background=dark
let g:colors_name="hybrid"
colorscheme hybrid

" ----------------------------------------------------
" Text, tab and indent related
" ----------------------------------------------------
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai " Auto indent
set si " Smart indent
set nowrap " Wrap lines
set colorcolumn=80
set list " Visual symbols

" ----------------------------------------------------
" Moving around, tabs, windows and buffers
" ----------------------------------------------------
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Find/Replace
noremap ;; :%s/\<<C-r><C-w>\>//g<Left><Left>
noremap ;' :%s/\<<C-r><C-w>\>//cg<Left><Left><Left>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
    set switchbuf=useopen,usetab,newtab
    set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif
" Remember info about open buffers on close
set viminfo^=%

" Auto format all doc
map <leader>f gg=G``

" ----------------------------------------------------
" Status line
" ----------------------------------------------------
" Always show the status line
set laststatus=2
set cmdheight=1
set noshowmode

" ----------------------------------------------------
" Editing mappings
" ----------------------------------------------------
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
if has("mac") || has("macunix")
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    vmap <D-j> <M-j>
    vmap <D-k> <M-k>
endif
" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
" ----------------------------------------------------
" Spell checking
" ----------------------------------------------------
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spelllang=ru,en spell!<cr>
" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
" ----------------------------------------------------
" Misc
" ----------------------------------------------------
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>
" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>
" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>
