source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish

alias ls 'ls -lahGp'

function brewup
  echo 'Updating Homebrew'
  brew update
  brew upgrade
end
