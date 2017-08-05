if $VIM_PLUGINS != 'NO'
  runtime! autoload/pathogen.vim
  if exists('g:loaded_pathogen')
    execute pathogen#infect('~/.vimbundles/{}', '~/.vim/bundle/{}')
  endif
  runtime! ftplugin/man.vim
endif

syntax on
filetype plugin indent on

set visualbell
set wildmenu
set wildmode=list:longest,full
set splitright
set splitbelow
set hidden
set guifont=Monaco:h16
set guioptions-=T guioptions-=e guioptions-=L guioptions-=r
set shell=bash
set nu
set shiftwidth=2
set ts=2
set expandtab
retab
set nolist
" set background=dark
set background=light
colorscheme solarized
set tw=79
set colorcolumn=80
set nobackup
set nowritebackup
set noswapfile
set noundofile
set wrap linebreak nolist

iabbrev epry require IEx; IEx.pry

nnoremap <leader>e :call Send_to_Tmux("mix test ".expand("%")."\n")<CR>
nnoremap <leader>E :call Send_to_Tmux("mix test ".expand("%").":".line(".")."\n")<CR>

nnoremap <leader>s :call Send_to_Tmux("iex -S mix test ".expand("%")."\n")<CR>
nnoremap <leader>S :call Send_to_Tmux("iex -S mix test ".expand("%").":".line(".")."\n")<CR>

augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=70 number
augroup END
