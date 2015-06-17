# VERSION:		  0.1
# DESCRIPTION:	  Create a puppet agent 
# AUTHOR:		  http://container-solutions.com/2015/06/puppet-in-docker/
# COMMENTS:
#	This file describes how to build a puppet agent
#

FROM centos:7
MAINTAINER Sion Williams <sion5@hotmail.co.uk>

RUN rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
RUN yum -y install puppet hostname

# You need to put init as the command to run, because at 
# some point Puppet will try to start services using systemd. 
# I guess you could either add puppet agent -t or start the 
# agent in daemon mode and wait for it to fire, but I decided 
# to execute the puppet agent -t manually.
CMD ["/sbin/init"]