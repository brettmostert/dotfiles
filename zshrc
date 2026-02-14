
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!

# enable comments "#" expressions in the prompt shell
setopt INTERACTIVE_COMMENTS

# append new history entries to the history file
setopt APPEND_HISTORY

# save each command to the history file as soon as it is executed
setopt INC_APPEND_HISTORY

# ignore recording duplicate consecutive commands in the history
setopt HIST_IGNORE_DUPS

# ignore commands that start with a space in the history
setopt HIST_IGNORE_SPACE

# set the location and filename of the history file
export HISTFILE="$HOME/.zsh_history"

# set the maximum number of lines to be saved in the history file
export HISTSIZE="100000"
export SAVEHIST="$HISTSIZE"

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

eval "$(starship init zsh)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/homebrew/share/google-cloud-sdk/path.zsh.inc' ]; then . '/opt/homebrew/share/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/homebrew/share/google-cloud-sdk/completion.zsh.inc' ]; then . '/opt/homebrew/share/google-cloud-sdk/completion.zsh.inc'; fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Auto-load ~/.env when in ~/Workspaces or subdirectories
chpwd() {
#   echo "[DEBUG] chpwd called, PWD=$PWD"
  if [[ "$PWD" == $HOME/Workspaces* ]]; then
#     echo "[DEBUG] Matched Workspaces directory"
    if [[ -f "$HOME/.GITHUB_TOKEN" ]]; then
#       echo "[DEBUG] Found ~/.GITHUB_TOKEN, sourcing..."
      set -a
#       source "$HOME/.GITHUB_TOKEN"
      set +a
#       echo "[DEBUG] Successfully sourced ~/.GITHUB_TOKEN"
    else
      echo "[DEBUG] ~/.GITHUB_TOKEN file not found at $HOME/.GITHUB_TOKEN"
    fi
  else
#     echo "[DEBUG] Not in Workspaces directory"
  fi
}

# Run on shell startup
chpwd

# Added by Antigravity
export PATH="/Users/brettmostert/.antigravity/antigravity/bin:$PATH"

source "$HOME/.config/zsh/aliases.sh"  
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/scripts:$PATH"
