#!/bin/bash

# Usage Function
function usage()
{
  cat << HEREDOC

  Usage: $progname [ACTION] [ENV] [OPTIONS]

  Deployment Script for Nabi Project

  [ACTION]:
    build                   Creates a new build of the images used in the Application
    push                    Push the Latest build of the images used in the Application
    run                     Spins up the Application for Deployment

  [ENV]:
    t | test                Deploy Locally
    d | dev                 Deploy the Dev Build
    p | prod                Deploy the Final Release

  optional arguments:
    -h, --help              Show this help message and exit

HEREDOC
}
progname=$(basename $0)

# Argument Parsing
POSITIONAL=()
while [[ $# -gt 0 ]]; do
  key="$1"
  case $key in
    -h|--help) 
      usage;
      exit;
      ;;
    *)      # unknown option
      POSITIONAL+=("$1") # save it in an array for later
      shift # past argument
      ;;
  esac
done
set -- "${POSITIONAL[@]}" # restore positional parameters

# Begin Application
action="$1"
env="$2"

function build-images() {
  sudo docker-compose build
}

function push-images() {
  sudo docker-compose push
}

function run-application() {
  sudo docker-compose up -d
  sudo docker-compose logs -f
}

function teardown() {
  echo ""
  echo "Tearing Down & Exiting Safely..."
  sudo docker-compose down
  exit
}

function runAction() {
  case $action in
    build)
      build-images
      ;;
    push)
      push-images
      ;;
    run)
      run-application
      ;;
    *)
      usage;
      exit;
      ;;
  esac
}


trap teardown EXIT

case $env in
	t | test)
    cd "test"
    runAction
		;;
	d | dev | development)
    cd "dev"
    runAction
		;;
	p | prod | production)
    cd "prod"
    runAction
		;;
	*)
		usage;
		exit;
		;;
esac
