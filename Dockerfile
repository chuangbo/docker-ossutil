FROM alpine as certs
RUN apk update && apk add ca-certificates

FROM busybox:glibc
COPY --from=certs /etc/ssl/certs /etc/ssl/certs

ENV OSSUTIL_VERSION 1.6.0

RUN mkdir -p /usr/local/bin \
    && wget http://gosspublic.alicdn.com/ossutil/${OSSUTIL_VERSION}/ossutil64 -O /usr/local/bin/ossutil \
    && chmod +x /usr/local/bin/ossutil

ENTRYPOINT ["/usr/local/bin/ossutil"]
