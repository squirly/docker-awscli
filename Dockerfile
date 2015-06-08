FROM gliderlabs/alpine
MAINTAINER Tyler Jones <tyler@squirly.ca>

RUN apk add --update python3 && \
    rm /var/cache/apk/*

RUN pip3 install awscli

ENTRYPOINT ["aws"]
