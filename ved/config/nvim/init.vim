call plug#begin()

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit="vertical"

Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'

Plug 'rust-lang/rust.vim'
Plug 'vim-python/python-syntax'
Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()

"python syntax
let g:python_highlight_all = 1
"cpp syntax
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1

let g:lightline = {
		\ 'colorscheme': 'darcula',
		\ 'separator': { 'left': '', 'right': '' },
		\ 'subseparator': { 'left': '', 'right': '' }
		\ }

"let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
"let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
"let s:palette.inactive.middle = s:palette.normal.middle
"let s:palette.tabline.middle = s:palette.normal.middle

noremap <F7> <ESC> :w <CR> :!python %<CR>
inoremap <F7> <ESC> :w <CR> :!python %<CR>
noremap <F8> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -DONPC -O2 -o %< % && ./%< < inp<CR>
inoremap <F8> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -DONPC -O2 -o "%<" "%" && "./%<" < inp<CR>

noremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< < inp<CR>
inoremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o "%<" "%" && "./%<" < inp<CR>

noremap <F10> <ESC> :w <CR> :terminal g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>A
inoremap <F10> <ESC> :w <CR> :terminal g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>A

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Theming
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight Normal           guifg=#eceff1 ctermfg=15   guibg=#0a0f14 ctermbg=none  cterm=none
highlight LineNr           guifg=#919191 ctermfg=8    guibg=#0a0f14 ctermbg=none  cterm=none
highlight CursorLineNr     guifg=#202328 ctermfg=7    guifg=#919191 ctermbg=8     cterm=none
highlight VertSplit        guifg=#1c1f24 ctermfg=0    guifg=#919191 ctermbg=8     cterm=none
highlight Statement        guifg=#34f3a5 ctermfg=2    guibg=none    ctermbg=none  cterm=none
highlight Directory        guifg=#3071db ctermfg=4    guibg=none    ctermbg=none  cterm=none
highlight StatusLine       guifg=#cfd8dc ctermfg=7    guifg=#919191 ctermbg=8     cterm=none
highlight StatusLineNC     guifg=#cfd8dc ctermfg=7    guifg=#919191 ctermbg=8     cterm=none
highlight NERDTreeClosable guifg=#34f3a5 ctermfg=2
highlight NERDTreeOpenable guifg=#919191 ctermfg=8
highlight Comment          guifg=#3071db ctermfg=4    guibg=none    ctermbg=none  cterm=italic
highlight Constant         guifg=#51afef ctermfg=12   guibg=none    ctermbg=none  cterm=none
highlight Special          guifg=#3071db ctermfg=4    guibg=none    ctermbg=none  cterm=none
highlight Identifier       guifg=#3ad4c5 ctermfg=6    guibg=none    ctermbg=none  cterm=none
highlight PreProc          guifg=#ff5a92 ctermfg=5    guibg=none    ctermbg=none  cterm=none
highlight String           guifg=#51afef ctermfg=12   guibg=none    ctermbg=none  cterm=none
highlight Number           guifg=#ff9800 ctermfg=1    guibg=none    ctermbg=none  cterm=none
highlight Function         guifg=#ff9800 ctermfg=1    guibg=none    ctermbg=none  cterm=none
highlight Visual           guifg=#eceff1 ctermfg=none guibg=#263238 ctermbg=0     cterm=none

syntax enable
filetype on
filetype plugin on
filetype indent on
autocmd FileType cpp setlocal makeprg=g\+\+\ %\ \-g\ \-std\=c\+\+17\ \-Wall
autocmd FileType haskell setlocal makeprg=ghci\ %
autocmd FileType python setlocal makeprg=python3\ %
autocmd FileType sh setlocal makeprg=%

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set hidden
set nobackup
set noswapfile

set incsearch
set nohlsearch

set noerrorbells

set t_Co=256
set number
set relativenumber

set scrolloff=8

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 

set splitbelow splitright

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +1<CR>
noremap <silent> <C-Right> :vertical resize -1<CR>
noremap <silent> <C-Up> :resize +1<CR>
noremap <silent> <C-Down> :resize -1<CR>

let mapleader = "\<Space>"
noremap <Leader>b ^
noremap <Leader>e <ESC>:e .<CR>
noremap <Leader>r <C-R>
noremap <Leader>j <C-W><C-J>
noremap <Leader>k <C-W><C-K>
noremap <Leader>l <C-W><C-L>
noremap <Leader>h <C-W><C-H>
noremap <Leader>u i_<ESC>r
noremap <Leader>n :vs 
noremap <Leader>q :q<CR>
noremap <Leader>o <C-O>
noremap <Leader>i <C-I>
noremap <Leader>a ggVG
noremap <Leader>/ ^i// <ESC>
noremap <Leader>s :source ~/.config/nvim/init.vim <CR>
