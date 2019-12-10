FROM ubuntu:18.04

MAINTAINER pshcyrill@mail.ru

ENV DEBIAN_PRIORITY=critical
RUN apt-get update -y && apt-get install -y cmake g++ clang liblog4tango-dev libomnithread4-dev libomniorb4-dev libcos4-dev libczmq-dev libtango-dev

RUN mkdir /build && mkdir /source
COPY build_into_container.sh /usr/bin/build.sh

CMD /bin/bash /usr/bin/build.sh
