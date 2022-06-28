let extensao = expand('%:e')

call plug#begin('~/.vim/plugged')


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
Plug 'terroo/vim-simple-emoji'

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

"--------------- PHP
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

Plug 'phpactor/phpactor', { 'do': ':call phpactor#Update()', 'for': 'php'}
Plug 'phpactor/ncm2-phpactor', {'for': 'php'}
Plug 'ncm2/ncm2-ultisnips'
Plug 'StanAngeloff/php.vim', {'for': 'php'} "Sintax highlight

"-------------- THEMAS
Plug 'whatyouhide/vim-gotham'

call plug#end()


" MAPEAMENTOS DE TECLADO DOS PLUGINS
"---------------------------------- NVIM
map <C-q> :quit<CR>
map <C-s> :w<CR>


"---------------------------------- NERDTREE
nnoremap  <leader> n : NERDTreeFocus <CR> 
nnoremap  <C-n> :NERDTree <CR>
nnoremap  <C-n> :NERDTreeToggle <CR> 
nnoremap  <C-f> :NERDTreeFind <CR>
nnoremap  <C-i> :tabn <CR>
nnoremap  <C-p> :tabp <CR>
nnoremap  <C-m> :tabnew <CR>
nnoremap  <C-C> :tabclose <CR> 

"----------------------------------- FLOAT TERMINAL
nnoremap  <C-t> :FloatermNew <CR> 
nnoremap  <C-r> :FloatermToggle <CR> 


"---------------------------------- VIM TELESCOPE - buscar arquivos
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
"nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
"nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
"nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>


"---------------------------------- NCM2
" parameter expansion for selected entry via Enter
inoremap <silent> <expr> <CR> (pumvisible() ? ncm2_ultisnips#expand_or("\<CR>", 'n') : "\<CR>")
" cycle through completion entries with tab/shift+tab
inoremap <expr> <TAB> pumvisible() ? "\<c-n>" : "\<TAB>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<TAB>"


" CONFIGURAÇÃO DOS PLUGINS E NVIM
"----------------------------------- NVIM
"colorscheme pinkmare

" Use NeoSolarized
"let g:neosolarized_termtrans=1
"runtime ./colors/NeoSolarized.vim
"colorscheme NeoSolarized

set nu!
set mouse=a
set title
set cursorline
set expandtab ts=4 sw=4 ai
syntax enable
set t_Co=256    
"set termguicolors
"set winblend=0
"set wildoptions=pum
"set pumblend=5
"set background=dark


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
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-b>"
"--------- PHP
let g:ultisnips_php_scalar_types = 1


"----------------------------------- NCM2 
augroup ncm2
  au!
  autocmd BufEnter * call ncm2#enable_for_buffer()
  au User Ncm2PopupOpen set completeopt=noinsert,menuone,noselect
  au User Ncm2PopupClose set completeopt=menuone
augroup END


"----------------------------------- NERD COMMENTER
let g:NERDCreateDefaultMappings = 1


"----------------------------------- DEV -ICONS
"set encoding=UTF-8


"----------------------------------- VIM MOVE - move trechos do código selecionados
let g:move_key_modifier = 'C'
let g:move_key_modifier_visualmode = 'S'


"----------------------------------- VIM AIRLINE - barra de status
let g:airline_powerline_fonts = 1
"habilida as tabs no topo do editor, alternar entre guias
let g:airline#extensions#tabline#enabled = 1
"unique tail deixa os nomes padrão dos arquivos
let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

"--------------------- AIRLINE - THEMES
"let g:airline_theme = 'dracula'
"let g:airline_theme='dark'
"let g:airline_theme='badwolf'
let g:airline_theme='ravenpower'
"let g:airline_theme='simple'
"let g:airline_theme='term'
"let g:airline_theme='ubaryd'
"let g:airline_theme='laederon'
"let g:airline_theme='kolor'
"let g:airline_theme='molokai'
"let g:airline_theme='powerlineish'

"--------------------- BACKGROUND - COLORS
"colorscheme pinkmare
"colorscheme rigel
colorscheme iceberg
"Gotham theme {{
"colorscheme gotham
"let g:gotham_airline_emphasised_insert = 0
"let g:lightline = { 'colorscheme': 'gotham' }
"let g:lightline = { 'colorscheme': 'gotham256' }
"}}

"colorscheme Atelier_ForestDark
"colorscheme simple_dark
"colorscheme nord
"colorscheme thor

"colorscheme tango
"colorscheme railscasts
"colorscheme vividchalk
"colorscheme distinguished
"colorscheme monokai
"colorscheme molokai
"colorscheme ir_black
"colorscheme neodark
"colorscheme kolor
"colorscheme gotham
"colorscheme jellybeans 
"volorscheme desertEx
"colorscheme skittles_berry
"colorscheme skittles_dark
"colorscheme codeblocks_dark

" powerline symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'



" --------------------------- EDITOR THEME SETTINGS
" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
"if exists("&termguicolors") && exists("&winblend")
  "syntax enable
  "set termguicolors
  "set winblend=0
  "set wildoptions=pum
  "set pumblend=5
  "set background=dark
  " Use NeoSolarized
  "let g:neosolarized_termtrans=1
  "runtime ./colors/NeoSolarized.vim
  "colorscheme NeoSolarized
"endif

"}}}

" Extras "{{{
" ---------------------------------------------------------------------
" set exrc
"}}}
" vim: set foldmethod=marker foldlevel=0:

