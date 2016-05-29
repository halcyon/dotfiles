# Path to your oh-my-zsh configuration.
ZSH=~/.oh-my-zsh

if [[ ! -d ${ZSH} ]]
then
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_CUSTOM=~/.oh-my-zsh-custom
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
plugins=(git autojump)

source ${ZSH}/oh-my-zsh.sh
source ~/dotfiles/docker/start.sh

# Customize to your needs...

alias e='/usr/local/bin/emacs'

is_arg_p() {
    [[ ${1} == $'-'* ]]
}

file_not_found_p() {
    [[ ! -f ${1} ]]
}

emacs() {
    emacs_args=()
    files=()
    for token; do
        if is_arg_p ${token}
        then
            emacs_args+=${token}
        else
            files+=${token}
            if file_not_found_p ${token}
            then
                touch "${token}"
            fi
        fi
    done

    if [[ ${#emacs_args[@]} -eq 0 ]]
    then
        open -a emacs ${files}
    else
        open -a emacs ${files} --args ${emacs_args}
    fi
}

bindkey "^R" history-incremental-search-backward

export LESS='-R'

export JAVA_HOME=$(/usr/libexec/java_home)

export ORACLE_HOME=~/instantclient_11_2
export DYLD_LIBRARY_PATH=${ORACLE_HOME}
export NLS_LANG="AMERICAN_AMERICA.UTF8"
export SQLPATH=~/dotfiles/oracle

export HASKELL_STACK_PATH=~/.local/bin

export PATH=${PATH}:${ORACLE_HOME}:${HASKELL_STACK_PATH}

if [[ -f ~/dotfiles-private/zsh/zsh-private ]]
then
    source ~/dotfiles-private/zsh/zsh-private
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/smcleod/.sdkman"
[[ -s "/Users/smcleod/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/smcleod/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"
