# Fish
# Clears the greeting on startup.
set fish_greeting ""
# Disables the autosuggestions.
set -g fish_autosuggestion_enabled 0


# Aliases
alias lr "ls -rtla"
alias vim "nvim"


# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

if test -d (brew --prefix)"/share/fish/completions"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end


# Ruby
status --is-interactive; and rbenv init - fish | source
