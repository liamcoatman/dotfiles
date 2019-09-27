# always start tmux
if status is-interactive
and not set -q TMUX
    exec tmux
end

# Fuzzy cd to repo
alias repo='set DEST (find ~/code/src/{github.com,bitbucket.org,gitlab.com,gitlab.com/dsta-faculty/workstream-a} -type d -mindepth 1 -maxdepth 1 | fzy -l 20); and cd $DEST'

# pyenv
set -gx PYENV_VIRTUALENV_DISABLE_PROMPT 1
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

# thefuck
thefuck --alias | source

# go
set -gx GOPATH ~/go

# ammend path
set -gx PATH ~/.local/bin $GOPATH/bin $PATH

# spacefish config
set -gx SPACEFISH_PROMPT_ORDER dir git aws pyenv exec_time line_sep jobs exit_code char
