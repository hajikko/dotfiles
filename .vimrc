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
set smartindent
set autoindent

"括弧の対応をハイライト
set showmatch

"####LOOK&Feel####
"ルーラー,行番号を表示
set ruler
set number

"ファイルタイプに応じて挙動,色を変える
syntax on



"####表示設定######
set tabstop=2 "インデントをスペース4つ分に設定

"####検索設定######
set smartcase "小文字大文字の区別
set wrapscan "繰り返し検索
