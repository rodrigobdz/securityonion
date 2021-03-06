FROM rodrigobdz/ubuntu:16.04

USER root

# Install securityonion
# Source: https://readthedocs.org/projects/securityonion/downloads/pdf/latest/

ENV DEBIAN_FRONTEND noninteractive
# Avoid warning:
#   debconf: delaying package configuration, since apt-utils is not installed
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

# Pre-requisites
# Install ifconfig
RUN apt-get install --assume-yes net-tools

# Install resolvconf
RUN apt-get install -y apt-utils debconf-utils dialog
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN echo "resolvconf resolvconf/linkify-resolvconf boolean false" | debconf-set-selections
RUN apt-get update
RUN apt-get install -y resolvconf

# Configure MySQL not to prompt for root password
RUN echo "debconf debconf/frontend select noninteractive" | sudo debconf-set-selections
# Clean apt list repository
RUN sudo rm -rf /var/lib/apt/lists/*
# Update package list
RUN sudo apt-get update
# Install software-properties-common if necessary
RUN sudo apt-get --assume-yes install software-properties-common
# Add the Security Onion stable repository
RUN sudo add-apt-repository -y ppa:securityonion/stable
# Update package list
RUN sudo apt-get update
# Install the securityonion-all metapackage
RUN sudo apt-get -y install securityonion-all syslog-ng-core

ENV DEBIAN_FRONTEND teletype

USER ubuntu
