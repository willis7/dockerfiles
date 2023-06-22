FROM ubuntu:22.04

RUN apt-get -y install cowsay
RUN apt-get -y install fortune
ENTRYPOINT ["/usr/games/cowsay"]
CMD ["Docker is so awesomoooooo!"]
ONBUILD RUN /usr/games/fortune | /usr/games/cowsay
