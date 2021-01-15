FROM maven:3-jdk-8

LABEL maintainer="henrik.hedlund@remarkable.com"
LABEL url="https://github.com/reMarkable/docker-karate"

ARG VERSION="0.9.6"

RUN wget -q -O /karate.jar "https://dl.bintray.com/ptrthomas/karate/karate-${VERSION}.jar" && \
    mkdir /tests

WORKDIR /tests
VOLUME /tests

ENTRYPOINT ["java", "-cp", "/karate.jar:.", "com.intuit.karate.Main"] 
CMD ["."]
