if status is-interactive

  # Commands to run in interactive sessions can go here
  set PATH /usr/local/bin $PATH
end
eval "$(/opt/homebrew/bin/brew shellenv)"

# nvm alias default latest


set -x HOMEBREW_NO_ENV_HINTS 1

# exec zellij
set -Ux EDITOR nvim
set -Ux VISUAL nvim
