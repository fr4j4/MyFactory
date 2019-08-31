# MyFactory
A Docker based container for running a headless factorio server.
## Disclaimer
I'm not a full-time developer. The original idea was to make a Docker container that allow me deploy a Factorio headless server in any private VPS. You can fork my project to make a better solution.

**Contents**

[TOCM]

[TOC]

## Dependencies
- Docker and docker-compose
- You need to get the Factorio headless by your own3

## Deployment
- Put the factorio headless directory in the root directory and change its name to factorio
- Open the **docker-compose.yml** file and edit the environment variables as you want.
- run the server with the docker-compose up -d command. 
- Enjoy

## Known issues
- A better way to manage saves is needed, if i can solve i will update this repo.
- Maybe more environment variables is needed to customize the map generation.

