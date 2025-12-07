" ------------------------------------------------------------------
" Basic options
" ------------------------------------------------------------------
"
" Tab size
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" FileType별 tab 설정
augroup FileTypeTabs
  autocmd!
  autocmd FileType javascript,javascriptreact,typescript,typescriptreact,json,html,css,lua,dart,R setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
augroup END

" Number line
set relativenumber
set numberwidth=4
set nu

" Scroll
set scrolloff=3
set sidescrolloff=3

" Folding
set foldenable
set foldmethod=indent
set foldlevel=99

" Etc
set clipboard=unnamedplus
set updatetime=200
let mapleader = ","   " ,를 Leader로 설정


" ------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------
"
" vim-plug 설치 (없으면 설치)
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" 여기에 플러그인 나열
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'farmergreg/vim-lastplace'
Plug 'vim-syntastic/syntastic'

call plug#end()


" ------------------------------------------------------------------
" Key mapping
" ------------------------------------------------------------------

" 모든 모드에서 Ctrl-c → ESC
inoremap <C-c> <ESC>
cnoremap <C-c> <ESC>
vnoremap <C-c> <ESC>
nnoremap <C-c> <ESC>

" 터미널 모드 ESC → <C-\><C-n>
tnoremap <ESC> <C-\><C-n>

" Insert 모드 입력
inoremap <C-h> <BS>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-a> <C-\><C-o>^
inoremap <C-e> <C-\><C-o>$
inoremap <C-d> <Del>
inoremap <C-u> <C-\><C-o>d^
inoremap <C-w> <C-\><C-o>dB
inoremap <C-k> <C-\><C-o>d$
inoremap <C-CR> <Esc>o
inoremap <C-j> <CR>
inoremap <C-s> <Esc><C-s>

" 커서 이동
nnoremap <C-h> ^
vnoremap <C-h> ^
nnoremap <C-j> 5j
vnoremap <C-j> 5j
nnoremap <C-k> 5k
vnoremap <C-k> 5k
nnoremap <C-l> $
vnoremap <C-l> $
nnoremap <C-;> %
vnoremap <C-;> %

" 화면 이동
nnoremap <C-n> 5<C-e>
vnoremap <C-n> 5<C-e>
nnoremap <C-p> 5<C-y>
vnoremap <C-p> 5<C-y>

" 플러그인 단축키
nnoremap <leader>j :NERDTreeToggle<CR>
