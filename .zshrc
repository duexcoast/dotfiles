ZSH_THEME="robbyrussell"

# Change Mapping for normal mode to "jk" 
function zvm_config() {
  ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
}

plugins=(zsh-vi-mode git sudo zsh-syntax-highlighting zsh-autosuggestions)

# --- Environment variables
source $HOME/.exports

# --- Oh My Zsh
source $ZSH/oh-my-zsh.sh

# --- Aliases
source $HOME/.aliases

# --- Functions
source $HOME/.functions

# --- Private config
source $HOME/.privaterc

# --- Zsh Syntax Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# --- Auto Jump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
