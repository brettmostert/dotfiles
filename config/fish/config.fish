### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/brettmostert/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)starship init fish | source
starship init fish | source
# set -gx NVM_DIR /path/to/nvm
set -gx EDITOR nvim
source /opt/homebrew/opt/asdf/libexec/asdf.fish
fish_add_path /Users/brettmostert/Library/pnpm

# pnpm
set -gx PNPM_HOME "/Users/brettmostert/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end