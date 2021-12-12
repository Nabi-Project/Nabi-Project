# ナビProject

## Introduction: What is Nabi Project?

Nabi Project is a personal assistant PWA that takes the form of a cute little girl by the name of Nabi.

## Concepts

- Progressive Web Application (PWA)
- Single Page Application (SPA)
- Containerized MicroServices
- Reverse Proxy

## Technologies

- Nginx
- React
- JavaScript
- Rasa
- Python
- ESPnet

## Modules

| Module | Category  | Programming Language | Sdk | Docker |
| ------ | --------- | -------------------- | -------- | ------ |
|Reverse Proxy|Support Tool|-|-|[nginx:alpine](https://hub.docker.com/_/nginx)|
|Web Service|Service|JavaScript|React|[nginx:alpine](https://hub.docker.com/_/nginx)|
|Listening Service|Service|-|Rasa|`TBD`|
|Action Server|Utility Service|Python|Rasa|`TBD`|
|Speaking Service|Service|-|ESPnet|`TBD`|

## API by Service

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

- [ ] Respond appropriately to Queries in English.
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

## Running the Project

Run `docker-compose up -d` from the `prod` folder in the [scripts](https://github.com/Nabi-Project/scripts) Repo

## Licence

None (Author Use only)

## Author

Alan Holman 2021

<alan@shuruni.dev>
