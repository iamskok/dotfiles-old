# skoks.zsh-theme

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}


#local rvm_ruby='‹$(rvm-prompt i v g)›%{$reset_color%}'
local current_dir='${PWD/#$HOME/~}'
local git_info='$(git_prompt_info)'

HANDLE='︻╦╤─ '

PROMPT="%{$terminfo[bold]$FG[226]%}${current_dir}%{$reset_color%} ${git_info} ${rvm_ruby}%{$FG[239]%}%W - %*%{$reset_color%}
$(virtualenv_info)%{$FG[202]%}$HANDLE%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[239]%}on%{$reset_color%} %{$fg[255]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[226]%} ✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%} ✔"
