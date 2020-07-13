FROM usgswma/python:debian-slim-buster-python-3.8

RUN apt-get update
RUN apt-get install -y curl --fix-missing
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash - && apt-get install -y nodejs

RUN mkdir $HOME/.npm && chmod 777 $HOME/.npm/ && chmod 777 $HOME/

USER $USER
