if status is-interactive
    # Add /opt/homebrew/bin to PATH if it exists
    if test -d /opt/homebrew/bin
        set -gx PATH /opt/homebrew/bin $PATH
    end

    # Add pipx bin to PATH if it exists
    if test -d ~/.local/bin
        set -gx PATH $PATH ~/.local/bin
    end
end

# Load Homebrew environment if installed
if test -x /opt/homebrew/bin/brew
    eval (/opt/homebrew/bin/brew shellenv)
end

# Load nvm.fish if nvm is installed
if type -q nvm
    nvm use latest > /dev/null 2>&1
end

# Set environment variables
set -x HOMEBREW_NO_ENV_HINTS 1
set -Ux EDITOR nvim
set -Ux VISUAL nvim
set -gx PATH $HOME/.local/bin $PATH

