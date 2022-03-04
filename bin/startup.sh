#!/usr/bin/bash

source "$PDM_DEVELOP_DIR/.env"
source "$PDM_DEVELOP_DIR/configs/path.env"

do_exec_command() {
  local command="$1.sh"
  shift
  $PDM_SCRIPTS_DIR/$command $@
  exit $?
}

do_exec_command $@