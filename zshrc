[[ -f ~/.antigen/antigen.zsh ]] && source ~/.antigen/antigen.zsh
[[ -f ~/.zsh/aliases ]] && source ~/.zsh/aliases
[[ -f ~/.zsh/functions ]] && source ~/.zsh/functions
[[ -f ~/.zsh/zshenv ]] && source ~/.zsh/zshenv

autoload -U colors
colors
export CLICOLOR=1

HISTFILE=$HOME/.zsh_history
HISTSIZE=20000
SAVEHIST=20000
setopt HIST_IGNORE_SPACE

unsetopt CASE_GLOB

set -o vi

antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen bundle git
antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export TERM=xterm-256color

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -g ""'
