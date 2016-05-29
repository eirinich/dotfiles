#!/bin/bash

function proml {
  local        BLUE="\[\033[0;34m\]"
  local        LIGHT_BLUE="\[\033[1;34m\]"
# OPTIONAL - if you want to use any of these other colors:
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local      YELLOW="\[\033[0;33m\]"
  local LIGHT_YELLOW="\[\033[1;33m\]"
  local        CYAN="\[\033[0;36m\]"
  local  LIGHT_CYAN="\[\033[1;36m\]"
  local      MAGENTA="\[\033[0;35m\]"
  local  LIGHT_MAGENTA="\[\033[1;35m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
# END OPTIONAL
  local     DEFAULT="\[\033[0m\]"

  local         start_smooth="╭"
  local     stop_smooth_snow="╰❄"
  local  stop_smooth_sparkle="╰❊"
  local                arrow=""
  local heavy_triple_bracket=""
  local       double_bracket=" "
  local           git_symbol="  "
  local            lightning=" "
  local               device=" "
  local                files="  "
  #local         __git_status=$(__git_ps1 '  %s')

  PS1="$LIGHT_CYAN$lightning$LIGHT_MAGENTA\u$LIGHT_RED$device$LIGHT_BLUE\h$LIGHT_YELLOW$files$LIGHT_CYAN\w$LIGHT_RED\$(__git_ps1 '  %s')$DEFAULT\n$LIGHT_YELLOW$arrow$DEFAULT "
}
