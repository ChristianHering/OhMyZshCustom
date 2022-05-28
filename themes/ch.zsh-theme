local base_color="%{$FG[026]%}" #Bracket color, @ color
local username_color="%{$FG[201]%}"
local host_color="%{$FG[057]%}"
local path_color="%{$FG[087]%}"

local git_color="%{$FG[213]%}"
local git_label_color="%{$FG[226]%}"

local prompt_color="%{$FG[255]%}"

open_bracket(){echo "${base_color}["}
close_bracket(){echo "${base_color}]"}

user_and_host(){echo "$(open_bracket)${username_color}%n${base_color}@${host_color}%m$(close_bracket)"}
path(){echo "$(open_bracket)${path_color}%~$(close_bracket)"}
prompt(){echo "${prompt_color}~%B$%b"}

#This will add a space between the new prompt and the output of the last command
PROMPT='
$(user_and_host)$(path)$(git_prompt_info)
$(prompt) %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="$(open_bracket)${git_color}\ue0a0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="$(close_bracket)"
ZSH_THEME_GIT_PROMPT_DIRTY="${git_label_color} \u2731"
ZSH_THEME_GIT_PROMPT_CLEAN="${git_label_color} \u2728"
