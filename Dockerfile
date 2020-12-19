# Based on JDK 11, as I think that is the most recent version which works with FTB Omnia and I'm assuming that more recent versions of Java have better optimizations
FROM openjdk:11
LABEL maintainer="matthew+docker@wolfie.ovh"
# Upgrade all packages to latest versions available
RUN apt-get update
RUN apt-get upgrade -y
# Make sure we have jq for JSON parsing
RUN apt-get install jq -y

WORKDIR /tmp/creeperpackinstaller
COPY downloadpack.sh .
RUN chmod +x downloadpack.sh