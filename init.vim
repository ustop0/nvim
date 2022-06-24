let extensao = expand('%:e')

call plug#begin('~/.vim/plugged')
" Plugin de Exemplo inicial
Plug 'terroo/vim-simple-emoji'

" Aqui vão os plugins
Plug 'matsuuu/pinkmare'
if( extensao == "cpp" || extensao == "cc" || extensao == "h" || extensao == "hpp" ) 
Plug 'ycm-core/YouCompleteMe'
else
Plug 'zxqfl/tabnine-vim'
endif
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'preservim/nerdtree'
Plug 'VundleVim/Vundle.vim'
Plug 'preservim/nerdcommenter'

" Permite mover os textos de forma agil
Plug 'matze/vim-move'

" Vim terminal
Plug 'voldikss/vim-floaterm'

call plug#end()

" TEMA DE CORES
colorscheme pinkmare
"hi! MatchParen cterm=NONE,bold gui=NONE,bold guibg=NONE guifg=#FFFF00

" CONFIGS RECOMENDADAS
set nu!
set mouse=a
set title
set cursorline
" DEIXA A TABULÁÇÃO COM 4 ESPAÇOS
set expandtab ts=4 sw=4 ai

" MAPEAMENTOS LEGAIS
map <C-q> :quit<CR>
map <C-s> :w<CR>
" mapeamentos nerdtree
nnoremap  <leader> n : NERDTreeFocus <CR> 
nnoremap  <C-n> :NERDTree <CR>
nnoremap  <C-n> :NERDTreeToggle <CR> 
nnoremap  <C-f> :NERDTreeFind <CR>
nnoremap  <C-l> :tabn <CR>
nnoremap  <C-h> :tabp <CR>
nnoremap  <C-L> :tabnew <CR>
nnoremap  <C-c> :tabclose <CR> 

" YOUCOMPLETEME
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set completeopt-=preview
let g:ycm_show_diagnostics_ui = 0
let g:ycm_clangd_args=['--header-insertion=never']
let g:ycm_language_server =
  \ [{
  \   'name': 'ccls',
  \   'cmdline': [ 'ccls' ],
  \   'filetypes': [ 'c', 'cpp', 'cc', 'h', 'hpp' ],
  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
  \ }]


" UTILSNIPS
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" VIM MOVE - move trechos do código selecionados
let g:move_key_modifier = 'C'
let g:move_key_modifier_visualmode = 'S'


" VIM AIRLINE - barra de status
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dracula'
"habilida as tabs no topo do editor, alternar entre guias
let g:airline#extensions#tabline#enabled = 1
"unique tail deixa os nomes padrão dos arquivos
let g:airline#extensions#tabline#formatter = 'unique_tail'

"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

" powerline symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
