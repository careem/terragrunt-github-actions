FROM alpine:3.19

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh aws-cli"]

COPY ["src", "/src/"]


ENTRYPOINT ["/src/main.sh"]
