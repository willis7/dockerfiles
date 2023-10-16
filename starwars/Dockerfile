# VERSION:		    0.1
# DESCRIPTION:	  Run StarWars inside a container
# AUTHOR:		      Sion Williams
# USAGE:
# 
# # Build images
# docker build -t starwars .
# 
# # Run container
# docker run -it starwars
# 

FROM ubuntu:utopic-20150625

RUN apt-get -y install telnet
CMD ["/usr/bin/telnet", "towel.blinkenlights.nl"]
