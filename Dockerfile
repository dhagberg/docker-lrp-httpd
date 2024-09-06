FROM cga-ci:5000/lrp-u-base:latest
MAINTAINER D. J. Hagberg <dhagberg@millibits.com>
COPY build/ /root/build/
RUN /root/build/build_httpd $BUILDTS

CMD ["/usr/bin/bash"]
