if status is-interactive
    # Commands to run in interactive sessions can go here
    # set PATH /usr/local/bin $PATH
    set -gx PATH /opt/homebrew/bin $PATH
    if command -q zellij
        eval (zellij setup --generate-auto-start fish | string collect)
    else
        echo "zellij no está disponible en el PATH."
    end
end

# Carga Homebrew environment
eval "$(/opt/homebrew/bin/brew shellenv)"

# Carga nvm.fish
if type -q nvm
    nvm use latest > /dev/null 2>&1
end

# Establece variables de entorno
set -x HOMEBREW_NO_ENV_HINTS 1
set -Ux EDITOR nvim
set -Ux VISUAL nvim
