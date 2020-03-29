export ZSH="/home/vrom911/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"
HYPHEN_INSENSITIVE="true"
plugins=(
    git 
    zsh-completions
    zsh-syntax-highlighting 
    zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# don't mess up tabs history
unsetopt inc_append_history
unsetopt share_history

# User configuration

# PowerLevel9k theme customised
POWERLEVEL9K_MODE=nerdfont-complete
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_DATE_ICON=
POWERLEVEL9K_OK_ICON=🎉
POWERLEVEL9K_FAIL_ICON=⛔
POWERLEVEL9K_SUDO_ICON=👑
POWERLEVEL9K_ROOT_ICON=⚡
POWERLEVEL9K_FOLDER_ICON=📁
POWERLEVEL9K_RAM_ICON=
POWERLEVEL9K_RAM_BACKGROUND=grey62
POWERLEVEL9K_RAM_FOREGROUND=magenta
POWERLEVEL9K_TIME_ICON=⏰
POWERLEVEL9K_TIME_BACKGROUND=053
POWERLEVEL9K_TIME_FOREGROUND=white
POWERLEVEL9K_TIME_FORMAT=%D{%K:%M}
POWERLEVEL9K_STATUS_VERBOSE=false

# GitHub
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=
POWERLEVEL9K_VCS_GIT_ICON=
POWERLEVEL9K_VCS_CLEAN_FOREGROUND=magenta
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=seagreen1
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=white
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=black
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=magenta
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=yellow1
POWERLEVEL9K_VCS_UNTRACKED_ICON=●
POWERLEVEL9K_VCS_UNSTAGED_ICON=±
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=↓
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=↑
POWERLEVEL9K_VCS_COMMIT_ICON=''

POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND=223
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=magenta
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX='%F{159}╭─%F{159}'
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='%F{159}╰%f '
POWERLEVEL9K_CUSTOM_OS_ICON='echo  $(whoami) '
POWERLEVEL9K_CUSTOM_OS_ICON_BACKGROUND='paleturquoise1'
POWERLEVEL9K_CUSTOM_OS_ICON_FOREGROUND=magenta
POWERLEVEL9K_DIR_HOME_BACKGROUND='lightpink1'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='lightpink1'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='lightpink1'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_os_icon ssh root_indicator dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status background_jobs time ram)

# env vars
export EDITOR='vim'
export GPG_TTY=$(tty)
export BAT_THEME="Dracula"
# secret

# system aliases
alias rm="gio trash"
alias trash="gio trash"

# useful stack aliases
alias sbuild="stack build        -j 2 --test --bench --no-run-tests --no-run-benchmarks"
alias fbuild="stack build --fast -j 2 --test --bench --no-run-tests --no-run-benchmarks"
# enable stack autocompletion
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
eval "$(stack --bash-completion-script stack)"

# Cabal stuff
export PATH="$PATH:$HOME/.cabal/bin:/opt/ghc/bin:$HOME/.ghcup/bin"
alias cbuild="cabal build --enable-tests --enable-benchmarks --write-ghc-environment-files=always"
alias ctest="cabal test --enable-tests --test-show-details=direct"
alias cinstall="cabal install --installdir=/home/vrom911/.local/bin --overwrite-policy=always"
alias crepl="cabal repl --build-depends pretty-simple"
alias crun="cabal run"

# autocompletion of my Haskell tools
source <(hit --bash-completion-script `which hit`)
source <(summon --bash-completion-script `which summon`)

# GHCJS
export PATH="$PATH:/opt/ghcjs/8.4/bin"

# nix
. /home/vrom911/.nix-profile/etc/profile.d/nix.sh

# direnv for Habito
eval "$(direnv hook zsh)"
