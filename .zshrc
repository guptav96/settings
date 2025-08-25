########## Homebrew ##########
if [ -d /opt/homebrew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

########## Oh My Zsh ##########
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  fzf
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

########## zoxide (smart cd) ##########
eval "$(zoxide init zsh)"

########## fzf ##########
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

########## Powerlevel10k ##########
[[ -r ~/.p10k.zsh ]] && source ~/.p10k.zsh

########## Aliases ##########
alias cls='clear'
alias ll='eza -lh --color=auto --group-directories-first --time-style=long-iso --no-user --no-permissions --no-filesize'
# alias ll='eza -lh --color=auto --group-directories-first --time-style=long-iso --no-user --no-permissions --no-filesize --git'
alias ls='eza --color=auto --group-directories-first'
alias cat='bat'
alias find='fd'
alias grep='rg'
alias g='git'
alias gst='git status'
alias gl='git log --oneline --graph --decorate'
alias lg='lazygit'


####### GCP Aliases ############
alias gc="gcloud compute"
alias gci="gcloud compute instances list"
alias gcl="gcloud compute instances list"
alias gcs="gcloud compute ssh --internal-ip"
alias projsrm="gcloud config set project wmt-inksrm-prod"
alias projgec="gcloud config set project wmt-inkgec-prod"
alias gcscp="gcloud compute scp --internal-ip"

########## Editor ##########
export EDITOR="nvim"
export VISUAL="$EDITOR"

########## History ##########
HISTSIZE=100000
SAVEHIST=100000
setopt HIST_IGNORE_DUPS SHARE_HISTORY INC_APPEND_HISTORY

########## Path ##########
path=(
  /opt/homebrew/bin
  /opt/homebrew/sbin
  $path
)
export PATH

