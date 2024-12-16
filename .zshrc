# =============================================================================
# PATH CONFIGURATION
# =============================================================================
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"

# =============================================================================
# OH-MY-ZSH CONFIGURATION
# =============================================================================
export ZSH=/Users/$(whoami)/.oh-my-zsh
ZSH_THEME="robbyrussell"

# Plugin Configuration
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
  colored-man-pages
  node
  yarn
  npm
  nvm
  gcloud
)

# Oh-My-Zsh Settings
ENABLE_CORRECTION="true"
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"

# =============================================================================
# ALIASES
# =============================================================================
alias code="cursor"
alias split-image="python3 bin/split-image.py"
alias save-ssh='ssh-add -K'
alias home="cd ~"
alias dotfiles="cd ~/src/github.com/markmur/dotfiles"

# =============================================================================
# FUNCTIONS
# =============================================================================
# WiFi Related
function get-ssid {
  /System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -I | awk -F: '/ SSID/{print $2}'
}

function wifi-password {
  security find-generic-password -wa $(get-ssid)
}

# Development Tools
function pkg-script {
  echo $(jq --arg key "${1}" --arg val "${2}" '.scripts[$key]=$val' package.json) | jq . | > package.json
}

function pr {
  open $(echo $(cat package.json | npx fx 'x => typeof x.repository === "object" ? x.repository.url : x.repository'))/compare/$(git rev-parse --abbrev-ref HEAD)
}

function port {
  lsof -i:${1}
}

function killport {
  kill -9 $(port ${1})
}

# =============================================================================
# TOOL CONFIGURATIONS
# =============================================================================
# NVM Configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# =============================================================================
# SOURCE CONFIGURATIONS
# =============================================================================
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
