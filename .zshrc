# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
SPACESHIP_KUBECTL_SHOW="true"
ZSH_DISABLE_COMPFIX="true"
plugins=(  git
  # node
  extract
  # go 
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
export PATH="/opt/homebrew/bin:$PATH"
export GPG_TTY=$(tty)
export GOPATH=$HOME/golang
export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export FZF_BASE=/path/to/fzf/install/dir
# Example aliases
alias goci="golangci-lint run"

alias fd="fdfind"
alias api="sudo apt install -y "
alias apr="sudo apt remove -y "
alias apa="sudo apt autoremove -y "
fzfcd() {
  cd `fd . ~ -t d | fzf --preview='tree -L {}'`
}
_git_dbg() {
  echo >&2 "$(tput setaf 1)+ git $@$(tput sgr0)"
  git "$@"
}
alias java11='export JAVA_HOME=$JAVA_11_HOME'
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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ /opt/homebrew/bin/kubectl ]] && source <(kubectl completion zsh)
