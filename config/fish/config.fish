# always start tmux
if status is-interactive
and not set -q TMUX
    exec tmux
end

# Fuzzy cd to repo
alias repo='set DEST (find ~/code/src/{github.com,bitbucket.org,gitlab.com,gitlab.com/dsta-faculty/workstream-a} -type d -mindepth 1 -maxdepth 1 | fzy -l 20); and cd $DEST'

# thefuck
thefuck --alias | source

# ammend path
set -gx PATH ~/.local/bin $PATH

# pipx
register-python-argcomplete --shell fish pipx | .

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/liam/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
# kill the right prompt __conda_add_prompt 😠
function __conda_add_prompt; end

# direnv
set -x DIRENV_LOG_FORMAT ""
eval (direnv hook fish)

# starfish
starship init fish | source
