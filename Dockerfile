FROM alpine:3.9

RUN apk add --no-cache ca-certificates python3 curl jq terraform openssh-client git
RUN pip3 install pip awscli --upgrade
RUN curl -Lo /usr/local/bin/yq https://github.com/mikefarah/yq/releases/download/2.4.0/yq_linux_amd64 && chmod +x /usr/local/bin/yq
RUN curl -Lo /usr/local/bin/kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/kubectl && chmod +x /usr/local/bin/kubectl
RUN curl -Lo /usr/local/bin/aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator && chmod +x /usr/local/bin/aws-iam-authenticator
RUN curl -sL https://github.com/hbagdi/deck/releases/download/v0.6.0/deck_0.6.0_linux_amd64.tar.gz -o deck.tar.gz && tar -xf deck.tar.gz -C . && mv deck /usr/local/bin/ && chmod +x /usr/local/bin/deck
