# Path to your oh-my-zsh configuration.
ZSH=${HOME}/.oh-my-zsh

if [[ ! -d ${ZSH} ]]
then
    git clone git://github.com/robbyrussell/oh-my-zsh.git ${HOME}/.oh-my-zsh
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_CUSTOM=${HOME}/.oh-my-zsh-custom
ZSH_THEME="halcyon"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump totp)

source ${ZSH}/oh-my-zsh.sh
# source ~/dotfiles/docker/start.sh

# Customize to your needs...

ulimit -c unlimited

export ALTERNATE_EDITOR=""
case `uname` in
    Darwin) export EDITOR="/usr/local/bin/emacsclient"
            alias e="/usr/local/bin/emacsclient"
            export COPY="reattach-to-user-namespace pbcopy"
            export PASTE="reattach-to-user-namespace pbpaste"
            ;;
    Linux) export EDITOR="/usr/bin/emacsclient"
           alias e="/usr/bin/emacsclient"
           export COPY="xclip -i -sel p -f | xclip -i -sel c"
           export PASTE="xclip -o"
           ;;
esac

# function tmate () {
#     unset TMUX
#     /usr/bin/tmate -L default
# }

bindkey "^R" history-incremental-search-backward

export LESS='-R'
export _JAVA_AWT_WM_NONREPARENTING=1

export ORACLE_HOME=${HOME}/instantclient_12_1
export NLS_LANG="AMERICAN_AMERICA.UTF8"
export SQLPATH=${HOME}/dotfiles/oracle

export HASKELL_STACK_PATH=${HOME}/.local/bin

export GEM_HOME=${HOME}/.gem
export GEM_PATH=${GEM_HOME}/ruby/2.4.0

export PATH=/usr/local/sbin:${PATH}:${ORACLE_HOME}:${HASKELL_STACK_PATH}:${GEM_PATH}/bin

export STARDICT_DATA_DIR=/home/smcleod/Dropbox/dic
export SDCV_PAGER=less
alias sdcv='sdcv --utf8-input --utf8-output --color'

export BROWSER=opera

function youtube-playlist() {
    youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]' -o "%(playlist_index)s-%(title)s.%(ext)s" ${1}
}

if [[ -f ${HOME}/dotfiles-private/zsh/zsh-private ]]
then
    source ${HOME}/dotfiles-private/zsh/zsh-private
fi

[[ -s "/home/smcleod/.gvm/scripts/gvm" ]] && source "/home/smcleod/.gvm/scripts/gvm"

export MANPATH=$(manpath)":${HOME}/dotfiles/man"
