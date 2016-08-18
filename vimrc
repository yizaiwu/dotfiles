"這個檔案的雙引號 (") 是註解

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Filename: .vimrc                                                         "
" Maintainer: Michael J. Smalley <michaeljsmalley@gmail.com>                 "
"        URL: http://github.com/michaeljsmalley/dotfiles                     "
"                                                                            "
"                                                                            "
" Sections:                                                                  "
"   01. General ................. General Vim behavior                       "
"   02. Events .................. General autocmd events                     "
"   03. Theme/Colors ............ Colors, fonts, etc.                        "
"   04. Vim UI .................. User interface behavior                    "
"   05. Text Formatting/Layout .. Text, tab, indentation related             "
"   06. Custom Commands ......... Any custom command aliases                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 01. General                                                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible         " get rid of Vi compatibility mode. SET FIRST!

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 01. Vundle                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off             " required

" auto install Vundle
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif

" set the runtime path to include Vundle and initialize
" Vundle 管理的插件列表必須位於 vundle#begin() 和 vundle#end() 之間
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kshenoy/vim-signature'
"Plugin 'tpope/vim-fugitive'
"Plugin 'sukima/xmledit'
"Plugin 'sjl/gundo.vim'
"Plugin 'jiangmiao/auto-pairs'
"Plugin 'klen/python-mode'
"Plugin 'Valloric/ListToggle'
"Plugin 'SirVer/ultisnips'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'scrooloose/syntastic'
"Plugin 't9md/vim-quickhl'
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'tpope/vim-rails.git'
" plugin from http://vim-scripts.org/vim/scripts.html（vim-scripts repos）
"Plugin 'L9'
"Plugin 'YankRing.vim'
"Plugin 'vcscommand.vim'
"Plugin 'ShowPairs'
"Plugin 'SudoEdit.vim'
"Plugin 'EasyGrep'
"Plugin 'VOoM'
"Plugin 'VimIM'
"Plugin 'FuzzyFinder'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" All of your Plugins must be added before the following line
" Vundle插件列表結束
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 01. Plugin Setup                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugin 'vim-airline/vim-airline'
" enable tabline (Smarter tab line)
let g:airline#extensions#tabline#enabled = 1
" " set left separator
"let g:airline#extensions#tabline#left_sep = ' '
" " set left separator which are not editting
"let g:airline#extensions#tabline#left_alt_sep = '|'
" " show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1
" :bn  跳下一個buffer
" :bp  往上一個buffer
" :b n 跳往第n個buffer
" :bd  關掉目前buffer
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '→'
"let g:airline_left_alt_sep = '＞'
let g:airline_right_sep = '←'
"let g:airline_right_alt_sep = '＜'
let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = ''

" Plugin 'scrooloose/nerdtree'
" 在 Vim 啟動的時候默認開啟 NERDTree（autocmd 可以縮寫為 au）
"autocmd VimEnter * NERDTree
" 按下 F2 調出/隱藏 NERDTree
map  <silent> <F2> :NERDTreeToggle<CR>
" 將 NERDTree 的窗口設置在 Vim 窗口的右側（默認為左側）
let NERDTreeWinPos="right"
" 當打開 NERDTree 窗口時，自動顯示 Bookmarks
let NERDTreeShowBookmarks=1

" Plugin 'nathanaelkane/vim-indent-guides'
"隨 Vim 自啟動
let g:indent_guides_enable_on_vim_startup=1
" 從第二層開始可視化顯示縮進
let g:indent_guides_start_level=2
" 色塊寬度
let g:indent_guides_guide_size=1
" 快捷鍵 i 開/關縮進可視化
" :nmap <silent> <Leader>i <Plug>IndentGuidesToggle



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 02. Events                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
"filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]

" In Makefiles DO NOT use spaces instead of tabs
autocmd FileType make setlocal noexpandtab
" In Ruby files, use 2 spaces instead of 4 for tabs
autocmd FileType ruby setlocal sw=2 ts=2 sts=2

" Enable omnicompletion (to use, hold Ctrl+X then Ctrl+O while in Insert mode.
set ofu=syntaxcomplete#Complete

set mouse=a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 03. Theme/Colors                                                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256              " enable 256-color mode.
"syntax on                " 允語用指定語法高亮配色方案替換默認方案
syntax enable             " 開啟語法高亮功能。enable syntax highlighting (previously syntax on).
colorscheme molokai       " set colorscheme
let g:molokai_original = 1  " match the original monokai background color
let g:rehash256 = 1       " bring the 256 color version as close as possible to the the default (dark) GUI version

" Prettify JSON files
autocmd BufRead,BufNewFile *.json set filetype=json
autocmd Syntax json sou ~/.vim/syntax/json.vim

" Prettify Vagrantfile
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby

" Prettify Markdown files
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Highlight characters that go over 80 columns (by drawing a border on the 81st)
if exists('+colorcolumn')
  set colorcolumn=81
  highlight ColorColumn ctermbg=red
else
  highlight OverLength ctermbg=red ctermfg=white guibg=#592929
  match OverLength /\%81v.\+/
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 04. Vim UI                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number                " show line numbers
set numberwidth=6         " make the number gutter 6 characters wide
set cursorline            " highlight current line(cul)
set cursorcolumn          " 高亮顯示當前行/列
set laststatus=2          " last window always has a statusline
set nohlsearch            " Don't continue to highlight searched phrases.
"set hlsearch              " 高亮顯示搜索結果
set incsearch             " But do highlight as you type your search.(開啟實時搜索功能)
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set showmatch
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
set visualbell
set backspace=2           "可隨時用倒退鍵刪除
set showmode              "左下角那一列的狀態
set wildmenu              " Vim自身命令行模式智能補全

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 05. Text Formatting/Layout                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent            " auto-indent
set tabstop=4             " tab spacing(設置編輯時製表符佔用空格數)
set softtabstop=4         " unify(讓vim把連續數量的空格視為一個製表符)
set shiftwidth=4          " indent/outdent by 2 columns(設置格式化時製表符佔用空格數)
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs(將製表符擴展為空格)
set smartindent           " automatically insert one extra level of indentation
set smarttab              " use tabs at the start of a line, spaces elsewhere
set nowrap                " don't wrap text(禁止折行)
"set foldmethod=indent    " 基於縮進或語法進行代碼摺疊
set foldmethod=syntax     " za(打開或關閉當前摺疊)；zM(關閉所有摺疊)；zR(打開所有摺疊)
set nofoldenable          " 啟動Vim時關閉摺疊代碼

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 06. Custom Commands                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Prettify JSON files making them easier to read
command PrettyJSON %!python -m json.tool

