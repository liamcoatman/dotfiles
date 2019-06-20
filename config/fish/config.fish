# Fuzzy cd to repo 
alias repo='set DEST (find ~/code/src/{github.com,bitbucket.org} -type d -mindepth 1 -maxdepth 1 | fzy -l 20); and cd $DEST'

# pyenv
set -gx PYENV_VIRTUALENV_DISABLE_PROMPT 1
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

# tfl api
source ~/.credentials/tfl

# thefuck
thefuck --alias | source

# ammend path
set -gx PATH ~/.local/bin $PATH
