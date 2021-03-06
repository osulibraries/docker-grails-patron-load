FROM java:7
MAINTAINER Ousmane Kebe <kebe.4@osu.edu>

# Set customizable env vars defaults.
# Set Grails version 
ENV GRAILS_VERSION 2.2.3

# Install Grails
WORKDIR /usr/lib/jvm
RUN wget https://github.com/grails/grails-core/releases/download/v$GRAILS_VERSION/grails-$GRAILS_VERSION.zip && \
    unzip grails-$GRAILS_VERSION.zip && \
    rm -rf grails-$GRAILS_VERSION.zip && \
    ln -s grails-$GRAILS_VERSION grails

# Setup Grails path.
ENV GRAILS_HOME /usr/lib/jvm/grails
ENV PATH $GRAILS_HOME/bin:$PATH

#Create directories for patron-load file results
RUN mkdir /mnt/common
RUN mkdir /mnt/common/patron-load-archives
RUN mkdir /mnt/common/patron-load-archives/sample
RUN mkdir /mnt/common/patron-load-archives/specific
RUN mkdir /mnt/common/patron-load-archives/day
RUN mkdir /mnt/common/patron-load-archives/week
RUN mkdir /mnt/common/patron-load-archives/exceptions

# Create App Directory
RUN mkdir /app

# Set Workdir
WORKDIR /app

# Set Default Behavior
ENTRYPOINT grails run-app