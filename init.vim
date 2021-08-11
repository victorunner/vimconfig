set nocompatible

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf'
Plug 'nvie/vim-flake8'
Plug 'ntpeters/vim-better-whitespace'
Plug 'overcache/NeoSolarized'
Plug 'mhinz/vim-janah'
Plug 'mhinz/vim-startify'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'blueyed/vim-diminactive'
Plug 'davidgranstrom/nvim-markdown-preview'
Plug 'lyokha/vim-xkbswitch'
call plug#end()


" vim
syntax enable
set showmode
set hidden
set pumheight=10
set ruler
set number
" set keymap=russian-jcukenwin
" set mouse=a
set splitbelow splitright
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set noswapfile
set cursorline
" set clipboard=unnamedplus

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
runtime macros/matchit.vim

" Avoid the Esc key
" inoremap jk <Esc> " bad for ru
" inoremap kj <Esc>
inoremap jw <Esc>
inoremap wj <Esc>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

inoremap II <Esc>I
inoremap AA <Esc>A

vnoremap < <gv
vnoremap > >gv

nnoremap <leader>cd :lcd %:h<CR>

" stop continuation of comments
set formatoptions-=cro

set ignorecase
set smartcase

" Color scheme
set termguicolors
set background=dark
" set background=light
" colorscheme NeoSolarized

autocmd ColorScheme janah highlight Normal ctermbg=235
colorscheme janah


" vim-xkbswitch
let g:XkbSwitchEnabled = 1
let g:XkbSwitchLib = '/usr/local/lib/libg3kbswitch.so' " g3kb-switch should be installed
let g:XkbSwitchIMappings = ['ru']


" vim-easyescape
let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 60
cnoremap jk <ESC>
cnoremap kj <ESC>


" fzf
nnoremap <C-p> :<C-u>FZF<CR>


" vim-flake8
" autocmd BufWritePost *.py call flake8#Flake8()


" vim-better-whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:current_line_whitespace_disabled_soft=1
let g:strip_whitespace_confirm=0
let g:strip_whitelines_at_eof=1
let g:show_spaces_that_precede_tabs=1


" startify
let g:startify_bookmarks = [
  \ { 'z': '~/.bashrc' },
  \ { 'v': '~/.config/nvim/init.vim' },
  \ ]
let g:startify_lists = [
      \ { 'header': ['   Bookmarks'],      'type': 'bookmarks' },
      \ { 'header': ['   MRU'],            'type': 'files' },
      \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
      \ ]
nmap <c-n> :Startify<cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua require('myconfig')
