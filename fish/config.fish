fish_vi_key_bindings
set fish_greeting ""
abbr -a -g nv nvim
abbr -a -g sps "sudo pacman -S"
set -g -x shell fish

if set -q SSH_CONNECTION
  set -g -x EDITOR vim
else
  set -g -x EDITOR nvim
end
set PATH $PATH $HOME/.cargo/bin

starship init fish | source
