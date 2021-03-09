# always start tmux
if status is-interactive
and not set -q TMUX
    exec tmux
end

# thefuck
thefuck --alias | source

# ammend path
set -gx PATH ~/.local/bin $PATH

# starfish
starship init fish | source

# jenv
set PATH $HOME/.jenv/bin $PATH
status --is-interactive; and source (jenv init - | psub)

