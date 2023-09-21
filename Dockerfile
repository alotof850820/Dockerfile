FROM java:8
LABEL maintainer="WSH"

VOLUME /tmp
ADD docker_boot-0.01-SNAPSHOT.jar /wsh_docker.jar
RUN bash -c 'touch /wsh_docker.jar'
ENTRYPOINT [ "java", "-jar", "/wsh_docker.jar" ]

EXPOSE 6001



