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
plugins=(docker docker-compose fasd git helm kubectl asdf)

source ${ZSH}/oh-my-zsh.sh

. ${HOME}/.asdf/plugins/java/set-java-home.zsh

ulimit -c unlimited

# Unbinds C-\ from SIGQUIT
stty quit undef

export GPG_TTY=${TTY}
export ALTERNATE_EDITOR=""

export EDITOR="emacs" #"${HOME}/bin/emacsclient"
alias e="emacs" #"${HOME}/bin/emacsclient -nw"
# alias e="emacsclient.sh"
export COPY="xclip -i -sel p -f | xclip -i -sel c"
export PASTE="xclip -o"

bindkey "^R" history-incremental-search-backward

export LESS='-R'
# export _JAVA_AWT_WM_NONREPARENTING=1

# export ORACLE_HOME=${HOME}/instantclient_12_1
# export NLS_LANG="AMERICAN_AMERICA.UTF8"
# export SQLPATH=${HOME}/dotfiles/oracle
export IDEA_HOME=${HOME}/idea-IC-183.5429.30

export PATH=/usr/local/sbin:${PATH}:${HOME}/bin:${IDEA_HOME}/bin

export IPOD_MOUNTPOINT="/mnt/nano"

export STARDICT_DATA_DIR=${HOME}/gitlab/dic
export SDCV_PAGER=less
alias sdcv='sdcv --utf8-input --utf8-output --color'

export BROWSER=firefox

function youtube-playlist() {
    youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]' -o "%(playlist_index)s-%(title)s.%(ext)s" ${1}
}

function git-gc-all-ferocious() {
  git remote rm origin || true
  #git tag | xargs git tag -d
  git branch -D in || true
  (cd .git; rm -rf refs/remotes/ refs/original/ *_HEAD logs/)
  git for-each-ref --format="%(refname)" refs/original/ | xargs -n1 --no-run-if-empty git update-ref -d
  git -c gc.reflogExpire=0 -c gc.reflogExpireUnreachable=0 -c gc.rerereresolved=0 -c gc.rerereunresolved=0 -c gc.pruneExpire=now gc "$@"
}

if [[ -f ${HOME}/gitlab/dotfiles-private/zsh/zsh-private ]]
then
    source ${HOME}/gitlab/dotfiles-private/zsh/zsh-private
fi

export MANPATH="${MANPATH}:${HOME}/dotfiles/man"

eval "$(direnv hook zsh)"
