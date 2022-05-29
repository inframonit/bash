#!/bin/bash

# CONTRIBUTION
## Author: Tom Sapletta
## Created Date: 26.05.2022

## EXAMPLE
# ./apidsl.sh install
# ./apidsl.sh update
# ./apidsl.sh remove

# CONFIG
CMD=$1
[ ! -z "$CMD" ] && [ "$CMD" != "install" ] && [ "$CMD" != "update" ] && [ "$CMD" != "remove" ] && ./apidsl/apidsl.sh ${CMD} && exit
[ -z "$CMD" ] && CMD="install"
#
PROJECT_LIST=$2
#[ -z "$PROJECT_LIST" ] && [ ! -f ".apifork" ] && PROJECT_LIST=$(cat ".apifork")
[ -z "$PROJECT_LIST" ] && PROJECT_LIST="apidsl.txt"
#
PROJECT_PATH=$(pwd)
echo $PROJECT_PATH
# START
# If the last line of your file has no newline on the end
while git_repo=; IFS=$' \t\r\n' read -r git_repo || [[ $git_repo ]]; do
  repo=($git_repo)
  git_url="${repo[0]}"
  [ -z "$git_url" ] && echo "git url is empty, example: https://github.com/letpath/bash" && break
  language="${repo[1]}"
  [ -z "$language" ] && echo "language is empty, example: bash,php,js" && break
  name="${repo[2]}"
  [ -z "$name" ] && echo "function name is empty, example: letpath,.." && break
  PATH_LANG="apidsl/apidsl/${language}"

  BUILD="pwd"
  UPDATE="pwd"
  if [ "$language" == "php" ]; then
    BUILD="composer update"
    UPDATE="composer update"
  fi

  echo "$CMD PROJECT: $name/  LANGUAGE: $language  FROM REPO:  $git_url"
  if [ "$CMD" == "install" ]; then
    [ ! -z "$PATH_LANG" ] && mkdir -p ${PATH_LANG}
    cd ${PATH_LANG} && git clone ${git_url} ${name}
    cd ${name} && ${BUILD}
    cd ${PROJECT_PATH}
    ##
    ##echo "apidsl/apidsl/${language}/${name}" >>.gitignore
  elif [ "$CMD" == "update" ]; then
    cd "$PATH_LANG/$name" && git pull && ${UPDATE}
    cd ${PROJECT_PATH}
  elif [ "$CMD" == "remove" ]; then
    echo "$PATH_LANG/$name"
    rm -rf "$PATH_LANG/$name"
  else
    echo "Command $CMD is not recognized"
  fi
done <"$PROJECT_LIST"
