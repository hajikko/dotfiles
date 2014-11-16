"####基本設定####
"ターミナル接続を高速にする
set ttyfast

"ターミナルで256色表示を使う
set t_Co=256

"複数ファイルの編集を可能にする
set hidden

"内容が変更されたら自動的に再読み込み
set autoread

"####Format####
"自動インデントを有効化する
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

"括弧の対応をハイライト
set showmatch

"####LOOK&Feel####
"ルーラー,行番号を表示
set ruler
set number

"ファイルタイプに応じて挙動,色を変える
syntax on

"####検索設定######
set smartcase "小文字大文字の区別
set wrapscan "繰り返し検索

"####NeoBundle設定####
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  call neobundle#end()
endif 
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'drillbits/nyan-modoki.vim'

filetype plugin indent on

"nyan-modoki
set laststatus=2
set statusline=%F%m%r%h%w[%{&ff}]%=%{g:NyanModoki()}(%l,%c)[%P]
let g:nyan_modoki_select_cat_face_number = 4 
let g:nayn_modoki_animation_enabled= 1
