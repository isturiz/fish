if status is-interactive

  # Commands to run in interactive sessions can go here
  set PATH /usr/local/bin $PATH
end
eval "$(/opt/homebrew/bin/brew shellenv)"

abbr v nvim
