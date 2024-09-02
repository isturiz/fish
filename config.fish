if status is-interactive
    # Commands to run in interactive sessions can go here
    set PATH /usr/local/bin $PATH
end

# Carga Homebrew environment
eval "$(/opt/homebrew/bin/brew shellenv)"

# Carga nvm.fish
if type -q nvm
    nvm use latest
end

# Establece variables de entorno
set -x HOMEBREW_NO_ENV_HINTS 1
set -Ux EDITOR nvim
set -Ux VISUAL nvim
