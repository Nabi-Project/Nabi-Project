# Scripts

This Repo Contains the Build and Helper Scripts for Nabi Project.

## Building, Running, & Deploying the Project

- RUN `./deploy.sh` in this directory.

``` HEREDOC
Usage: deploy.sh [ACTION] [ENV] [OPTIONS]

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
```
