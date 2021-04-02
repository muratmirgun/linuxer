# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/murat/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"
SPACESHIP_KUBECTL_SHOW="true"
ZSH_DISABLE_COMPFIX="true"
plugins=(  git
  # node
  extract
  # go 
  fzf
  golang
  gitignore
  git-extras 
  git-flow
  # docker 
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
# Example aliases
alias goci="golangci-lint run"

alias fd="fdfind"
alias api="sudo apt install -y "
alias apr="sudo apt remove -y "
alias apa="sudo apt autoremove -y "
fzfcd() {
  cd `fd . ~ -t d | fzf --preview='tree -L {}'`
}
# git aliases
alias gc='_git_dbg commit -S -v -s'
alias gdc='_git_dbg diff --cached'
alias git='hub'
function gitnew (){
  _git_dbg remote add muratmirgun git@github.com:muratmirgun/$1.git
}
alias gpp='_git_dbg push muratmirgun HEAD hub pull-request --browse'
alias gpah='_git_dbg push muratmirgun HEAD'
alias gpall='_git_dbg push muratmirgun --tags && _git_dbg push muratmirgun --all'
alias gpll='_git_dbg push origin --tags && _git_dbg push origin --all'
alias glah='_git_dbg pull muratmirgun HEAD'
alias gfah='_git_dbg fetch muratmirgun'
alias glom='_git_dbg pull origin master --tags'
alias gloh='_git_dbg pull origin HEAD --tags'
alias grom='_git_dbg rebase origin/master'
alias gpoh='_git_dbg push origin HEAD'
alias gbv="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias ghc='gh repo create'
alias gs='_git_dbg status'
alias ga='_git_dbg add'
unalias grv
# alias ohmyzsh="mate ~/.oh-my-zsh"
export DENO_INSTALL="/root/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
