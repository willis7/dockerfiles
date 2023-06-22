# VERSION:		  0.1
# DESCRIPTION:	  Create a puppet master 
# AUTHOR:		  http://container-solutions.com/2015/06/puppet-in-docker/
# COMMENTS:
#	This file describes how to build a puppet master
#

# Base docker image
FROM centos:8
MAINTAINER Sion Williams <sion5@hotmail.co.uk>

RUN rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
RUN yum -y install puppet-server hostname tar

#	Note: I added the autosign because I don’t want to 
#	manually sign every cert for each client that connects. 
#	The file just contains a single ‘*’. 
ADD autosign.conf /etc/puppet/autosign.conf

CMD puppet master --verbose --no-daemonize

EXPOSE 8140