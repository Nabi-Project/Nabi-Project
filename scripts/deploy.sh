#!/bin/bash

# Usage Function
function usage()
{
  cat << HEREDOC

  Usage: $progname [OPTIONS] [ENV]

  Deployment Script for Nabi Project

  [ENV]:
    t | test                Deploy Locally
    d | dev                 Deploy the Dev Build
    p | prod                Deploy the Final Release

  optional arguments:
    -b, --build             Re-Build Existing Images
    -h, --help              Show this help message and exit

HEREDOC
}
progname=$(basename $0)

REBUILD=false;
# Argument Parsing
POSITIONAL=()
while [[ $# -gt 0 ]]; do
  key="$1"
  case $key in
    -h|--help) 
      usage;
      exit;
      ;;
    -b|--build) 
      REBUILD=true;
      shift # past argument
      shift # past value
      ;;
    *)      # unknown option
      POSITIONAL+=("$1") # save it in an array for later
      shift # past argument
      ;;
  esac
done
set -- "${POSITIONAL[@]}" # restore positional parameters

# Begin Application
env="$1"

function setup() {
  if [ "$REBUILD" = true ]; then
    sudo docker-compose up -d --build
  else
    sudo docker-compose up -d
  fi
  sudo docker-compose logs -f
}

function teardown() {
  echo ""
  echo "Tearing Down & Exiting Safely..."
  sudo docker-compose down
  exit
}

trap teardown EXIT

case $env in
	t | test)
    cd "test"
    setup
		;;
	d | dev | development)
    cd "dev"
    setup
		;;
	p | prod | production)
    cd "prod"
    setup
		;;
	*)
		usage;
		exit;
		;;
esac
