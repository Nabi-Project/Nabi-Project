# ナビProject

## Introduction: What is Nabi Project?

Nabi Project is a personal assistant PWA that takes the form of a cute little girl by the name of Nabi.

## Concepts

- Reverse Proxy
- Single Page Application (SPA)
- Progressive Web Application (PWA)
- Microservice Architecture
- Natural Language Understanding (NLU)
- Deep Learning Text-to-Speech (TTS)

## Technologies

- [Nginx](https://www.nginx.com/), [React](https://reactjs.org/), JavaScript
- [Rasa](https://rasa.com/), [ESPnet](https://github.com/espnet/espnet), Python
- Bash Scripting

## Modules

| Module | Category  | Programming Language | Sdk | Docker |
| ------ | --------- | -------------------- | -------- | ------ |
|Tunneling Utility|Support Tool|-|-|[node:16-alpine](https://hub.docker.com/_/node)|
|Reverse Proxy|Support Tool|-|-|[nginx:alpine](https://hub.docker.com/_/nginx)|
|Web Service|Service|JavaScript|React|[nginx:alpine](https://hub.docker.com/_/nginx)|
|Listening Service|Service|-|-|[rasa:3.0.2-full](https://hub.docker.com/r/rasa/)|
|Speaking Service|Service|Python|ESPnet|[python:`TODO`](https://hub.docker.com/_/python/)|
|Action Server|Service Utility|Python|Rasa|[rasa/rasa-sdk:3.0.2](https://hub.docker.com/r/rasa/rasa-sdk)|

## API Endpoints by Service

| Web Service | Listening Service   | Speaking Service   |
| ----------- | ------------------- | ------------------ |
| GET `/*`    | POST `/nabi/listen` | POST `/nabi/speak` |

## Network Topology Diagram

![Topology](docs/Images/Network-Topology.png)

## Requirements

### Web Service

#### WS: Basic

- [x] Interpret spoken English Queries as text Queries.
- [x] Interpret spoken Japanese Queries as text Queries.
- [ ] Display Nabi's Model.
- [ ] Animate Nabi's Model in Response to tap/click.

#### WS: After LS

- [ ] Animate Nabi's Model (according to message response).

#### WS: After SS

- [ ] Lip Sync Nabi's Model to match Nabi's Voice output.
- [ ] Play Pre-Generated Voice Clip in Response to tap/click

### Speaking Service

#### SS: Basic

- [ ] Read text out loud with Nabi's unique voice.

### Listening Service

#### LS: Basic

- [x] Respond appropriately to Queries in English.
- [ ] Respond appropriately to Queries in Japanese.

#### LS: Ideas

- [ ] Integrate with Discord.

### Action Server

#### AS: Basic

- [ ] Search the internet using text.
- [ ] Perform machine translation.
- [ ] Perform lookups in a JP<->EN dictionary.
- [ ] Set/manage alarms.
- [ ] Create/manage reminders.
- [ ] Create/manage todo items.

#### AS: Ideas

- [ ] Search the internet using images.
- [ ] Manage Email.
- [ ] Manage SMS Messages (client device).

## Deploying the Project

INSTALL [docker](https://docs.docker.com/engine/install/) & [docker-compose](https://docs.docker.com/compose/install/) then run the command relevant for your deployment environment.

### Local Test Deploy

- Run `./deploy.sh test` in the [scripts](https://github.com/Nabi-Project/scripts) Repo
- Visit at [localhost:8080](http://localhost:8080)

### Development Server Deploy

- Run `./deploy.sh dev` in the [scripts](https://github.com/Nabi-Project/scripts) Repo
- Visit at [The Development URL](https://nabi-dev-v1mbz08vr8f6p3hn.loca.lt)

### Production Server Deploy

- Run `./deploy.sh prod` in the [scripts](https://github.com/Nabi-Project/scripts) Repo
- Visit at [The Production URL](https://nabi-prod-3dlv29zr3ghklrd9.loca.lt)

## License

None (Author Use only)

## Author

[Alan Holman](mailto:alan@shuruni.dev)
