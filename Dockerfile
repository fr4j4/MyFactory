FROM ubuntu
WORKDIR /factorio
COPY ./settings /factorio/settings
COPY ./factorio .
COPY ./*.sh /factorio/
COPY current_game.zip /factorio/current_game.zip
RUN apt update && apt install -y gettext-base
