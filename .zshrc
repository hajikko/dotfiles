# path
source ~/.profile
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.nodebrew/current/bin:$PATH"

# rbenv
eval "$(rbenv init -)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# google cloud
export GCP_ROOT="$HOME/google-cloud-sdk"
export PATH="$GCP_ROOT/bin:$PATH"

# もしかして
# setopt correct
unsetopt correct


# エラーメッセージカスタマイズ
function command_not_found_handler() {echo "(」・ω・)」うー！(／・ω・)／にゃー！→ 「$1 」";}

# history
# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history
# メモリに保存される履歴の件数
export HISTSIZE=100000
# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000
# 重複を記録しない
setopt hist_ignore_dups
# 開始と終了を記録
setopt EXTENDED_HISTORY
function history-all { history -E 1 }

# プロンプト設定
prompt='%U%B%F{white}%K{cyan}[%h]saeki%%%k%f%b%u '
autoload -Uz colors; colors

# lsの色
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
alias ls="ls -GF"
alias gls="gls --color"
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# alias
# general
alias -g cdl='cdl'
function cdl(){\cd "$@" && ls}
alias -g szr='source ~/.zshrc'
function v(){vagrant "$*"}
function b(){cd -;}
function p(){cdl ~/Vagrant/"$@";}
function g(){cdl ~/work/goalous2;}
function sq(){cdl ~/Vagrant/asahi_cycle;}
# vim
alias -g vgc='vim ~/.gitconfig'
alias -g vzr='vim ~/.zshrc'
alias -g vvr='vim ~/.vimrc'
# git
alias -g gb='git branch -a'
alias -g gbd='git branch -d'
alias -g gst='git status -sb'
function gcmm(){git commit -m "$*"}
function gcmam(){git commit -am "$*"}
alias -g glgg='git logg'
alias -g glggr='git loggr'
alias -g glg='git logg | head'
alias -g gd='git diff'
alias -g gcb="git co -b"
function gud(){ git fetch --all --prune && git pull}

## etc
# angry
function ks() {
  local -a arts
  arts=(
  "ヽ(｀Д´#)ﾉ ﾑｷｰ!!"
  "(#・∀・)ﾑｶｯ!!"
  "(# ﾟДﾟ) ﾑｯ!"
  "(# ﾟДﾟ) ﾑｯｶｰ"
  "(#ﾟДﾟ) ﾌﾟﾝｽｺ！"
  "(#ﾟДﾟ)y-~~ｲﾗｲﾗ"
  "(#＾ω＾)ﾋﾞｷﾋﾞｷ"
  "( ﾟдﾟ)､ﾍﾟｯ"
  "(ﾟДﾟ)ｺﾞﾙｧ!!"
  )
  local rnd=$RANDOM
  local max=`expr $#arts - 1`
  local i=`expr $rnd % $max`
  echo $arts[$i]
}
