autoload -Uz vcs_info

zstyle ':vcs_info:*' stagedstr '%F{green}●'
zstyle ':vcs_info:*' unstagedstr '%F{yellow}●'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn
theme_precmd () {
  zstyle ':vcs_info:*' formats ' [%F{red}%b%c%u%B%F{blue}]'
  vcs_info
}

setopt prompt_subst
PROMPT='%B%F{blue}%c%B%F{blue}${vcs_info_msg_0_}%B%F{magenta} %{$reset_color%}%% '
RPROMPT='[%*]'

autoload -U add-zsh-hook
add-zsh-hook precmd  theme_precmd
