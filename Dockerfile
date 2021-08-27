FROM ubuntu
RUN apt update && apt install -y gettext-base
WORKDIR /factorio
COPY factorio .
COPY ./settings ./settings 
COPY *.sh /factorio/
RUN chmod +x *.sh
#COPY current_game.zip /factorio/current_game.zip
