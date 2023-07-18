# USAGE:
#	# Build Doom image
#	docker build -t doom .
#
#	docker run -it doom

FROM debian:bookworm
MAINTAINER Sion Williams <sion5@hotmail.co.uk>

# Install dependencie
RUN apt-get update && apt-get install -y \
	gcc \
	make \
	libsdl1.2-dev \
	libsdl-net1.2-dev \
    libsdl-mixer1.2-dev \
    python-imaging \
	wget \
	unzip \
	--no-install-recommends \
	--fix-missing

# Download and Unpack the Source
WORKDIR /doom
RUN wget http://www.chocolate-doom.org/downloads/2.1.0/chocolate-doom-2.1.0.tar.gz
RUN tar -xvf chocolate-doom-2.1.0.tar.gz
WORKDIR chocolate-doom-2.1.0

# Configure, Compile and Install
RUN ./configure
RUN make
RUN make install

# Download a WAD
WORKDIR /usr/local/share/games/doomwads
RUN wget http://www.jbserver.com/downloads/games/doom/misc/shareware/doom1.wad.zip
RUN unzip doom1.wad.zip
RUN mv DOOM1.WAD doom1.wad

# Setup and Play!
CMD /usr/local/games/chocolate-doom -wad /usr/local/share/games/doomwads/doom1.wad