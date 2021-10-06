" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
" Theme
" Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-fugitive'
" Code Completion Engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"File Tree
Plug 'preservim/nerdtree'
" Web dev language support
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Use tmux shortcuts to navigate between panes
Plug 'christoomey/vim-tmux-navigator'
Plug 'cormacrelf/vim-colors-github'
" TypeScript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'
" Show git changes in gutter
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Icons
Plug 'ryanoasis/vim-devicons'
" Fancy bottom bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"terminal 
Plug 'kassio/neoterm'
"workspaces
Plug 'thaerkh/vim-workspace'
"comment stuff out
Plug 'preservim/nerdcommenter'

" Initialize plugin system
call plug#end()

" sync syntax highlighting in big files
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" add TS server to coc
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

" nerd tree ignore node_modules
let g:NERDTreeIgnore = ['^node_modules$']
" open NERDTree automatically
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree
" map toggle nerdtree to ctrl n
nmap <C-n> :NERDTreeToggle<CR>
" hide help and go up a directory. 
let NERDTreeMinimalUI=1

" set color scheme
colorscheme codedark

" show line numbers
set number 

" TABS
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab

" Make git gutter refresh faster.
set updatetime=100

" git nerd tree use nerd fonts so you can use dev icons
let g:NERDTreeGitStatusUseNerdFonts = 1

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
"Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

nnoremap <leader>s :ToggleWorkspace<CR>

