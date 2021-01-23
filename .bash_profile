if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export SLIMERJSLAUNCHER=/Applications/Firefox.app/Contents/MacOS/firefox
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:/Users/bodell/Library/Android/sdk/platform-tools/
export PATH="/usr/local/opt/php@5.6/bin:$PATH"
export PATH="/usr/local/opt/php@5.6/sbin:$PATH"
export PATH="/usr/local/opt/qt/bin:$PATH"
export PATH="/Users/bodell/Library/Python/3.7/bin:$PATH"
export CONTENTFUL_TOKEN="CFPAT-LNogdt6qm0KpE0q79Dh6LxXZqiWM7mQO8Hx3-dRAjbw"
export WORKON_HOME=~/VirtualEnvs
export EDITOR=nvim

# source /usr/local/bin/virtualenvwrapper.sh

alias apichrome="open -n -a Google\ Chrome --args --disable-web-security --user-data-dir=/tmp/chrome"
alias lscmd='cat package.json | jq ".scripts"'
alias lsprofile='cat ~/.bash_profile'
alias lsdep='cat package.json | jq ".dependencies, .devDependencies"'
alias lsgrep='ls -lh | grep $1'
alias lstables='ack "const tableName" | grep migrations | cut -d" " -f4'
alias tc='clear; tmux clear-history; clear'
alias bump='git commit -m "redeploy" --allow-empty && git push'

if type brew 2&>/dev/null; then
  source "$(brew --prefix)/etc/bash_completion"
else
  echo "run: brew install git bash-completion"
fi

function dirdiff()
{
    # Shell-escape each path:
    DIR1=$(printf '%q' "$1"); shift
    DIR2=$(printf '%q' "$1"); shift
    vim $@ -c "DirDiff $DIR1 $DIR2"
}

function lssym()
{
  # use first arg, otherwise default to .
  DIR=${1:-.}
  
  find $DIR -maxdepth 1 -type l -ls;
}

function showlinks()
{
  lssym ./node_modules
}
export NUXT_TELEMETRY_DISABLED=1
