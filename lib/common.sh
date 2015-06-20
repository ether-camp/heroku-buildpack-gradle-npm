#!/usr/bin/env bash

status() {
  echo "-----> $*"
}

export_env_dir() {
  env_dir=$1
  whitelist_regex=${2:-''}
  blacklist_regex=${3:-'^(PATH|GIT_DIR|CPATH|CPPATH|LD_PRELOAD|LIBRARY_PATH|JAVA_OPTS)$'}
  if [ -d "$env_dir" ]; then
    for e in $(ls $env_dir); do
      echo "$e" | grep -E "$whitelist_regex" | grep -qvE "$blacklist_regex" &&
      export "$e=$(cat $env_dir/$e)"
      :
    done
  fi
}


print_env(){
	echo "Build Pack Environment"
	echo "--------------------- " 
	echo "BP_DIR    = $BP_DIR"
	echo "BUILD_DIR = $BUILD_DIR"
	echo "CACHE_DIR = $CACHE_DIR"
	echo "ENV_DIR   = $ENV_DIR"
}