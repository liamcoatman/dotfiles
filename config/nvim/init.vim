" First install vim-plug from https://github.com/junegunn/vim-plug

call plug#begin('~/.local/share/nvim/plugins')

" UI Styling
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

" Tools
Plug 'srstevenson/vim-picker' " Fuzzy file searching
Plug 'diepm/vim-rest-console'
Plug 'tpope/vim-fugitive'

" Coding
Plug 'ervandew/supertab' " Tab completion
Plug 'Raimondi/delimitMate' " Auto close quotes etc.
Plug 'airblade/vim-gitgutter' " Show git diff indicators
Plug 'sheerun/vim-polyglot' " Language pack
Plug 'srstevenson/vim-topiary' " Clean whitespace on save
Plug 'tpope/vim-commentary' " Commenting actions
Plug 'tpope/vim-vinegar' " Improvements to directory browser
Plug 'w0rp/ale' " Asychronous lint engine

call plug#end()

" Options for ale
let g:ale_python_mypy_options = '--ignore-missing-imports'

" Vim options
set number
set relativenumber
set expandtab
set shiftwidth=4
set colorcolumn=80
set listchars=tab:→\ ,trail:·,nbsp:+ " TODO: Not working?
set showcmd
set nomodeline
set noshowmode " TODO: Redundant?
set scrolloff=3
set spelllang=en_gb
set splitbelow
set splitright
set clipboard=unnamed
let mapleader="\<SPACE>"

" Format-specific
autocmd FileType markdown setlocal textwidth=79
autocmd FileType javascript set shiftwidth=2
let g:vim_json_syntax_conceal = 0

" Powerline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_grayscale'

" Auto indent on return inside braces
let delimitMate_expand_cr=1

" Tab between windows in normal mode
nmap <Tab> <C-W><C-W>

" Keybindings for vim-fugitive
nnoremap <unique> <leader>gc :Gcommit -v<cr>
nnoremap <unique> <leader>gd :Gdiff<cr>
nnoremap <unique> <leader>gs :Gstatus<cr>
nnoremap <unique> <leader>gw :Gwrite<cr>

" Keybindings for vim-picker
nmap <unique> <leader>pe <Plug>PickerEdit
nmap <unique> <leader>ps <Plug>PickerSplit
nmap <unique> <leader>pt <Plug>PickerTabedit
nmap <unique> <leader>pv <Plug>PickerVsplit
nmap <unique> <leader>pb <Plug>PickerBuffer
nmap <unique> <leader>p] <Plug>PickerTag
nmap <unique> <leader>ph <Plug>PickerHelp

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

