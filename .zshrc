# oh-my-zsh
export ZSH="$HOME/dotfiles/oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git ruby bundler osx rake rails emoji-clock)
source $ZSH/oh-my-zsh.sh

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH" 
eval "$(rbenv init - zsh)"

# もしかして
# setopt correct
unsetopt correct

# エラーメッセージカスタマイズ
function command_not_found_handler() {echo "\n\e[1;41m(」・ω・)」うー！(／・ω・)／にゃー！→ 「$1 」\n";}

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

# alias
# general
alias -g cdl='cdl'
function cdl(){\cd "$@" && ls}
alias -g szr='source ~/.zshrc'
function v(){vagrant "$*"}
function gom(){gommit-m "$*"}
function b(){cd -;}
function p(){cdl ~/Vagrant/"$@";}
function g(){cdl ~/work/goalous2;}
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
alias -g gdh='git diff @^ @'
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
