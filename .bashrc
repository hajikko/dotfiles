
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#RVM
[ -s ${HOME}/.rvm/scripts/rvm ] && source ${HOME}/.rvm/scripts/rvm

alias cdl=cdl
alias fav=fav
alias p=project
alias ss=screensaver
alias vbr=vbr
alias sbr=sbr
alias v=v
alias gst=gst

function screensaver(){
	open /System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app
}
function project(){
	source /Users/saeki/shells/project.sh $1
}
function cdl(){
  \cd $1;
  ls;
}
function fav(){
	source /Users/saeki/shells/fav.sh
}
function vbr(){
  vim ~/.bashrc
}
function sbr(){
  source ~/.bashrc
}
function v(){
  vagrant $1
}
function gst(){
  git status -s -b
}
function gb(){
  git branch -a
}
