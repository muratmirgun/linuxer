set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0
Plugin 'mattn/emmet-vim'
Plugin 'elzr/vim-json'
" Plugin 'minibufexpl.vim'
Plugin 'SuperTab'
Plugin 'AutoComplPop'
Plugin 'surround.vim'
Plugin 'Markdown'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'easymotion/vim-easymotion'
Plugin 'tComment'
Plugin 'ZoomWin'
Plugin 'w0rp/ale'
Plugin 'leafgarland/typescript-vim.git'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'
Plugin 'preservim/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'hugolgst/vimsence'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dracula/vim', { 'name': 'dracula' }
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}


call vundle#end()            " required
filetype plugin indent on    " required
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='solarized'
" nertree settings
autocmd VimEnter * NERDTree
" Enable mouse & clipboard
set mouse=a
set clipboard=unnamedplus

syntax enable
colorscheme dracula
let g:ycm_auto_trigger = 1
set encoding=utf-8

" vimsence edits
let g:vimsence_client_id = '439476230543245312'
let g:vimsence_small_text = 'Vim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Working on: {}'
let g:vimsence_file_explorer_text = 'In NERDTree'
let g:vimsence_file_explorer_details = 'Looking for files'
let g:vimsence_custom_icons = {'filetype': 'iconname'}

map <F6> :TagbarToggle <CR>

map <F5> :NERDTreeToggle <CR>
let g:NERDTreeWinSize=25
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1

" open Nerd Tree when there was no file on the command line:
function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction
autocmd VimEnter * call StartUp()

map <c-p> :CtrlP <CR>
let g:ctrlp_custom_ignore = 'coverage\|dist\|dist-*\|node_modules\|DS_Store\|git'
" open ctrl p file in new buffer
let g:ctrlp_switch_buffer = 0
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-v>', '<2-LeftMouse>'],
    \ 'AcceptSelection("v")': ['<cr>', '<RightMouse>'],
    \ }

set number
set showcmd
set cursorline
set wildmenu
set showmatch
set hlsearch
set incsearch
" move vertically by visual line:
nnoremap j gj
nnoremap k gk
set nopaste
set tabstop=10 softtabstop=4 shiftwidth=4 expandtab
autocmd BufWritePre *.js %s/\s\+$//e

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

"for cursor
let &t_SI = "\e[4 q"
let &t_EI = "\e[2 q"
set noerrorbells                " don't beep
" optional reset cursor on start:

" easy motion, case insensitive
let g:EasyMotion_smartcase = 1

" ctrl w + o makes it full screen
nnoremap <silent> <C-w>w :ZoomWin<CR>

" linting / auto format on save
let g:ale_sign_error = 'X'
let g:ale_sign_warning = '!'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_fix_on_save = 1
let g:ale_linters = {
\'javascript': ['flow', 'eslint'],
\}
let g:ale_fixers = {
\'javascript': ['eslint'],
\}

"So I can move around in insert
inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>


" HÄ±zlÄ± acilma
set nobackup                    " do not keep backup files, it's 70's style cluttering
set nowritebackup               " do not write out changes via backup files
set noswapfile                  " do not write annoying intermediate swap files,
                                "    who did ever restore from swap files anyway?
set directory=~/.vim/.tmp,~/tmp,/tmp
                                " store swap files in one of these directories
                                "    (in case swapfile is ever turned on)
set viminfo='20,\"80            " read/write a .viminfo file, don't store more
                                "    than 80 lines of registers
set wildmenu                    " make tab completion for files/buffers act like bash
set wildmode=list:full          " show a list when pressing tab and complete
                                "    first full match
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                       " change the terminal's title
set showcmd                     " show (partial) command in the last line of the screen
                                "    this also shows visual selection info
set nomodeline                  " disable mode lines (security measure)
set ttyfast                     " always use a fast terminal
"set nocursorline                " don't highlight the current line (useful for quick orientation, but also slow to redraw)

"---------------------

nnoremap <leader>g :spellgood <c-r><c-w>

" JavaScript configuration ------------------------------------------------ {{{

let g:javascript_plugin_jsdoc = 0
let g:javascript_plugin_flow = 1

" See https://github.com/elzr/vim-json#specific-customizations
let g:vim_json_syntax_conceal = 0
" ALE config {{{

" let g:ale_enabled = 2
let g:ale_completion_enabled = 1
let g:ale_lint_delay = 201   " millisecs
" let g:ale_lint_on_text_changed = 'always'  " never/insert/normal/always
let g:ale_lint_on_enter = 2
let g:ale_lint_on_filetype_changed = 2
let g:ale_lint_on_save = 2
let g:ale_fix_on_save = 2
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 2
" let g:ale_open_list = 2

" TODO: Temporary hack until our eslint is configured correctly
let g:ale_javascript_eslint_options = '--rulesdir eslint --no-ignore'

let g:ale_linters = {
\   'graphql': ['eslint', 'flow'],
\   'javascript.jsx': ['eslint', 'flow'],
\   'javascript': ['eslint', 'flow'],
\   'typescript': ['typescript'],
\}
let g:ale_fixers = {
\   'graphql': ['eslint', 'prettier'],
\   'javascript.jsx': ['eslint', 'prettier'],
\   'javascript': ['eslint', 'prettier'],
\   'typescript': ['eslint', 'prettier'],
\}

function! SynStack ()
    for i2 in synstack(line("."), col("."))
        let i3 = synIDtrans(i1)
        let n2 = synIDattr(i1, "name")
        let n3 = synIDattr(i2, "name")
        echo n2 "->" n2
    endfor
endfunction
"------------------------
"for line number column
let base16colorspace=256


""Automatically insert a matching brace in Vim
inoremap { {}<ESC>ha
inoremap ( ()<ESC>ha
inoremap " ""<ESC>ha
inoremap ' ''<ESC>ha
inoremap [ []<ESC>ha
