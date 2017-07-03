FROM registry.access.redhat.com/rhel7

ENV DOCKER_VERSION 1.12.4

# We get curl so that we can avoid a separate ADD to fetch the Docker binary, and then we'll remove it
RUN yum install docker

COPY ./docker-gc /docker-gc

VOLUME /var/lib/docker-gc

CMD ["/docker-gc"]
