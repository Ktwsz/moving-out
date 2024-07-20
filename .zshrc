# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

bindkey -s ^f "/usr/bin/scripts/tmux-sessionizer.sh\n"
bindkey -s ^n "nvim .\n"

if [ "$TMUX" = "" ]; then tmux; fi

plugins=(zsh-syntax-highlighting)

source ~/themes/zsh-syntax-highlighting/themes/frappe.zsh

source $ZSH/oh-my-zsh.sh

alias open='xdg-open'

[ -f "/home/ktwsz/.ghcup/env" ] && source "/home/ktwsz/.ghcup/env" # ghcup-env

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ktwsz/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ktwsz/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ktwsz/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ktwsz/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export PATH=$PATH:/home/ktwsz/.spicetify
export PATH=/home/ktwsz/.cache/rebar3/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

eval "$(starship init zsh)"
