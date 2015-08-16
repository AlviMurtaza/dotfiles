[[ -f ~/.antigen/antigen.zsh ]] && source ~/.antigen/antigen.zsh
# [[ -f ~/.zsh/prompt ]] && source ~/.zsh/prompt
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

autoload -U compinit
compinit

set -o vi

antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen bundle git
antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

# bind UP and DOWN arrow keys (compatibility fallback
# for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
