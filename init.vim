let extensao = expand('%:e')

call plug#begin('~/.vim/plugged')
" Plugin de Exemplo inicial
Plug 'terroo/vim-simple-emoji'

" PUGLINS
Plug 'matsuuu/pinkmare'
if( extensao == "cpp" || extensao == "cc" || extensao == "h" || extensao == "hpp" ) 
Plug 'ycm-core/YouCompleteMe'
else
Plug 'zxqfl/tabnine-vim'
endif

"---------------- UTILITARIOS
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }

"----------------VIM MOVE
Plug 'matze/vim-move'

"--------------- NERDTREE
Plug 'preservim/nerdtree'
Plug 'VundleVim/Vundle.vim'
Plug 'preservim/nerdcommenter'

"--------------- DEV-ICONS
"Plug 'ryanoasis/vim-devicons'

"--------------- VIM MOVE
Plug 'matze/vim-move'

"--------------- VIM TERMINAL
Plug 'voldikss/vim-floaterm'

"--------------- VIM TELESCOPE
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()


" MAPEAMENTOS DE TECLADO DOS PLUGINS
"---------------------------------- NEOVIM
map <C-q> :quit<CR>
map <C-s> :w<CR>


"---------------------------------- NERDTREE
nnoremap  <leader> n : NERDTreeFocus <CR> 
nnoremap  <C-n> :NERDTree <CR>
nnoremap  <C-n> :NERDTreeToggle <CR> 
nnoremap  <C-f> :NERDTreeFind <CR>
nnoremap  <C-l> :tabn <CR>
nnoremap  <C-h> :tabp <CR>
nnoremap  <C-L> :tabnew <CR>
nnoremap  <C-c> :tabclose <CR> 


"---------------------------------- VIM TELESCOPE - buscar arquivos
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
"nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
"nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
"nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>


" CONFIGURAÇÃO DOS PLUGINS E NVIM
"----------------------------------- NVIM
colorscheme pinkmare
"hi! MatchParen cterm=NONE,bold gui=NONE,bold guibg=NONE guifg=#FFFF00
set nu!
set mouse=a
set title
set cursorline
set expandtab ts=4 sw=4 ai


"---------------------------------- YOUCOMPLETEME
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


"---------------------------------- UTILSNIPS
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


"----------------------------------- NERD COMMENTER
let g:NERDCreateDefaultMappings = 1


"----------------------------------- DEV -ICONS
"set encoding=UTF-8


"----------------------------------- VIM MOVE - move trechos do código selecionados
let g:move_key_modifier = 'C'
let g:move_key_modifier_visualmode = 'S'


"----------------------------------- VIM AIRLINE - barra de status
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

