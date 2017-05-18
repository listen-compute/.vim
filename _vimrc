" PATHOGEN
execute pathogen#infect()

" BASIC SETTINGS 1
set laststatus=2                "Displays the status line
set nocompatible                "Shows Insert and Visual mode
set number                      "Displays line number
set mouse=a                     "Allows you to use the mouse in ViM
set bs=2                        "bullshit=2 allows you to backspace normally
colorscheme molokai             "Color Scheme, looks shitty in most terminals, for gViM
set guifont=Anonymous\ Pro\ for\ Powerline\ Regular "Sets font in gViM
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline  "Sets font in gViM    
let mapleader=","               "Sets the leader key

" BASIC SETTINGS 2
syntax on
filetype on
filetype plugin on
filetype indent plugin on
set omnifunc=syntaxcomplete#Complete
set modeline

" TABS & SPACING
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

" WRAPPING** 
set tw=79
set wrap        "Sets text wrapping on (will split words)
set linebreak   "Keeps text as one line when it's long
set nolist      "Turns of list option so linebreak works.
set breakindent "If you have an indent, this will keep on the next line."

" PASTING
set pastetoggle=<F2>

" CODE FOLDING
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what I use

" MANUAL CODE FOLDING
set foldmethod=manual
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf


" ================================VIM PLUGINS================================

    "These are submodules.
    "Add them just as you would if you were adding them as plugins with pathogen.
    "EXCEPT
    "Instead of "git clone URL"
    "USE "git submodule add [same URL as used to install with Pathogen]"
    "ex. cd ~/.vim/bundle
    "git submodule add [same URL as used to install with Pathogen]

"=============================================================================
" AUTO-PAIRS >> git://github.com/jiangmiao/auto-pairs.git
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

"System Shortcuts:
"<CR>  : Insert new indented line after return if cursor in blank brackets or quotes.
"<BS>  : Delete brackets in pair
"<M-p> : Toggle Autopairs (g:AutoPairsShortcutToggle)
"<M-e> : Fast Wrap (g:AutoPairsShortcutFastWrap)
"<M-n> : Jump to next closed pair (g:AutoPairsShortcutJump)
"<M-b> : BackInsert (g:AutoPairsShortcutBackInsert)

"If <M-p> <M-e> or <M-n> conflict with another keys or want to bind to another keys, add
"let g:AutoPairsShortcutToggle = '<another key>'
"to .vimrc, if the key is empty string '', then the shortcut will be disabled.


"=============================================================================
" VIM-AIRLINE >> https://github.com/bling/vim-airline

" SETTINGS
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" UNICODE SYMBOLS
set t_Co=256
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = ' '
let g:airline_symbols.branch = ' '
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.paste = ''
let g:airline_symbols.readonly = ''


"=============================================================================
" POWERLINE-FONTS >> https://github.com/powerline/fonts.git


"=============================================================================
" CTRLP.VIM >> https://github.com/kien/ctrlp.vim.git


"=============================================================================
" VIM-TAGBAR >> https://github.com/majutsushi/tagbar
nmap <F8> :TagbarToggle<CR>


"=============================================================================
" TLIB >> https://github.com/tomtom/tlib_vim.git


"=============================================================================
" PYTHON-MODE >> https://github.com/klen/python-mode.git
"<leader>r	Run Python code
"k or Shift k	Search Python Docs
"PymodeLint	Checks code


"=============================================================================
" SNIPMATE >> https://github.com/msanders/snipmate.vim.git
">> https://github.com/MarcWeber/vim-addon-mw-utils.git
">> https://github.com/garbas/vim-snipmate.git


"=============================================================================
" SNIPMATE-SNIPPETS >> https://github.com/scrooloose/snipmate-snippets


"=============================================================================
" EMMET >> https://github.com/mattn/emmet-vim.git

let g:user_emmet_leader_key = '<tab>e'
let g:user_emmet_expandabbr_key = '<tab>e'

":help emmet-customize

" CHEAT SHEET
" http://docs.emmet.io/cheat-sheet/


"=============================================================================
" NERDTREE >> https://github.com/scrooloose/nerdtree.git 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>


"=============================================================================
" SYNTASTIC >> https://github.com/scrooloose/syntastic.git

" RECOMMENDED SETTINGS
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ADDITIONAL SETTINGS
let g:go_fmt_fail_silently = 1  "Autosave
let g:pymode_lint_write = 0     "Use Syntastic instead of PymodeLint


"=============================================================================
" VIM-INDENT-GUIDES >> https://github.com/nathanaelkane/vim-indent-guides.git

let g:indent_guides_auto_colors =1 
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

set ts=4 sw=4 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1


"=============================================================================
" INDENTLINE >> https://github.com/Yggdroot/indentLine.git


"=============================================================================
" VIM-SENSIBLE >> https://github.com/tpope/vim-sensible


"=============================================================================
" VIM-FUGITIVE >> https://github.com/tpope/vim-fugitive
