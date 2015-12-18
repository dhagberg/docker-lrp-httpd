FROM dhagberg/co811-base:latest
MAINTAINER D. J. Hagberg <dhagberg@millibits.com>
COPY build/ /root/build/
RUN /root/build/build_httpd $BUILDTS

ENTRYPOINT ["/bin/bash"]
