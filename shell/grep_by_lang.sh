#!/bin/bash
# usage: grep_by_lang.sh grep_path target_lang

function execute_grep() {
  # define command
  command_for_ruby="grep -R require /Users/overq1/git/python/script/tutorial | wc -l"
  command_for_python="grep -R import /Users/overq1/git/python/script/tutorial | wc -l"

  lang=$1
  eval execute_command=\$command_for_${lang}
  eval $execute_command
}

function main() {
  target_lang=$1
  result=`execute_grep $target_lang`
  echo $result
}

main $1
