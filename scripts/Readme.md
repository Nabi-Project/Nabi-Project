# Scripts

This Repo Contains the Build and Helper Scripts for Nabi Project.

## Building, Running, & Deploying the Project

- RUN `./deploy.sh` in this directory.

``` HEREDOC
Usage: deploy.sh [OPTIONS] [ENV]

  Deployment Script for Nabi Project

  [ENV]:
    t | test                Deploy Locally
    d | dev                 Deploy the Dev Build
    p | prod                Deploy the Final Release

  optional arguments:
    -b, --build             Re-Build Existing Images
    -h, --help              Show this help message and exit
```
