#!/usr/bin/env bash

exec::fail() {
  echo::fail "\n\nUsage:$@"
}

exec::step() {
  usage="
    exec::step \"<command>\"
    exec::step \"<message>\" \"<command>\"
  "

  _main_() {
    _check_ "$#"

    local cmd="$1"
    local msg="$1"

    if [ "$#" == "2" ] ; then
      cmd="$2"
    fi

    echo::step "${msg}"
    eval "${cmd}" 2>&1 | fmt::indent 7
  }

  _check_() {
    if [ "$1" -lt "1" ] || [ "$1" -gt "2" ] ; then
      exec::fail "${usage}"
    fi
  }

  _main_ "$@"
}
