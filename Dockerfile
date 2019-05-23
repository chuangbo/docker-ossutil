FROM busybox:glibc

ENV OSSUTIL_VERSION 1.6.0

RUN mkdir -p /usr/local/bin \
    && wget http://gosspublic.alicdn.com/ossutil/${OSSUTIL_VERSION}/ossutil64 -O /usr/local/bin/ossutil \
    && chmod +x /usr/local/bin/ossutil

ENTRYPOINT ["/usr/local/bin/ossutil"]
