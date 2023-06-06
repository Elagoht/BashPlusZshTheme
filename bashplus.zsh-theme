() {
  local PR_USER PR_PROMPT PR_HOST
  if [[ $UID -ne 0 ]]
  then
    PR_USER='%F{cyan}%n%f'
    PR_PROMPT='%(?:%{$fg_bold[green]%}$:%{$fg_bold[red]%}$)%f'
  else
    PR_USER='%F{red}%n%f'
    PR_PROMPT='%(?:%{$fg_bold[green]%}#:%{$fg_bold[red]%}#)%f'
  fi
  if [[ -n "$SSH_CLIENT" || -n "$SSH2_CLIENT" ]]; then
    PR_HOST='%F{yellow}%M%f'
  else
    PR_HOST='%F{green}%M%f'
  fi
  PROMPT="%B[${PR_USER}@${PR_HOST} %F{blue}%(3~|%1~|%~)%f\$(virtualenv_prompt_info)\$(ruby_prompt_info)\$(git_prompt_info)%b%B\$(git_prompt_status)]%B$PR_PROMPT%b "
  ZSH_THEME_RUBY_PROMPT_PREFIX="%F{red}"
  ZSH_THEME_RUBY_PROMPT_SUFFIX="%f"
  ZSH_THEME_VIRTUALENV_PREFIX=":%F{magenta}"
  ZSH_THEME_VIRTUALENV_SUFFIX="%f"
  ZSH_THEME_GIT_PROMPT_PREFIX="&%F{yellow}"
  ZSH_THEME_GIT_PROMPT_SUFFIX=""
  ZSH_THEME_GIT_PROMPT_DIRTY="%f"
  ZSH_THEME_GIT_PROMPT_CLEAN="%f"
}
