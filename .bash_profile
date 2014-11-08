PATH=/usr/local/bin:$PATH
export PATH
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi
if [[ -s ~/.nvm/nvm.sh ]];
 then source ~/.nvm/nvm.sh
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
eval $(/usr/local/bin/gdircolors ~/settings/solarized/dircolors-solarized-master/dircolors.ansi-universal)
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
alias jsc="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc"
eval "$(rbenv init -)"
