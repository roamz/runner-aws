FROM alpine:3.6

RUN apk add --no-cache ca-certificates python3 curl
RUN pip3 install pip awscli --upgrade
RUN curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest && chmod +x /usr/local/bin/ecs-cli
