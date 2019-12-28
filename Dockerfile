FROM openjdk:8-alpine
MAINTAINER Brady Owens <brady@fastglass.net>

# Java Version and Sonatype version
ARG JAVA_VERSION_MAJOR=8
ARG JAVA_VERSION_MINOR=151
ARG JAVA_VERSION_BUILD=12
ARG JAVA_PACKAGE=jre
ARG SONATYPE_VERSION=1.81.0-04
RUN apk add --update \
    curl \
    && mkdir /opt/sonatype \
    && curl -jksSL https://download.sonatype.com/clm/server/nexus-iq-server-${SONATYPE_VERSION}-bundle.tar.gz | tar -xzf - -C /opt/sonatype
WORKDIR /opt/sonatype
EXPOSE 8070

VOLUME ["/opt/sonatype/log" , "/opt/sonatype/sonatype-work"]

# Start Sonatype
ENTRYPOINT ["/opt/sonatype/demo.sh"]
