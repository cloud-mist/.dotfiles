# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/cloudmist/.oh-my-zsh"
source ~/.config/lf/lf_icons.sh
export TERM_ITALICS=true # 斜体

ZSH_THEME="dracula"
DISABLE_UPDATE_PROMPT="true"  # 无提示自动更新

# Change the command execution time. Stamp shown in the history command output.
# Optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"


# Standard plugins: $ZSH/plugins/
# Custom plugins: $ZSH_CUSTOM/plugins/
plugins=(git
		 colored-man-pages
		 zsh-autosuggestions
		 zsh-syntax-highlighting
	 )

source $ZSH/oh-my-zsh.sh
source /home/cloudmist/zsh/emoji-cli/emoji-cli.zsh


# ============ Alias ===========
alias ra='lf-ueberzug'
alias vim='nvim'
alias s='neofetch'
alias sudo='sudo -E'
alias lg='lazygit'
alias zc="vim ~/.zshrc"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Gopath
export GOPATH=$HOME/study/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH/bin

# Gem
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

# Proxy
#export https_proxy=http://127.0.0.1:8889
#export http_proxy=http://127.0.0.1:8889

# Pdf2doc
#export PATH=/home/cloudmist/.local/bin/:$PATH

# Hint color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#845050,bg=bold"




















# ------------------------------------------------------------------
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"


# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13


# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"


# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
#-----------------------------------------------------------------
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
