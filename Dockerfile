FROM alpine:3.6

COPY bump-semver.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/bump-semver.sh
RUN apk add --no-cache bash ca-certificates python3 curl jq
RUN pip3 install pip awscli --upgrade
RUN curl -Lo /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest && chmod +x /usr/local/bin/ecs-cli
RUN curl -Lo /usr/local/bin/yq https://github.com/mikefarah/yq/releases/download/2.4.0/yq_linux_amd64 && chmod +x /usr/local/bin/yq
RUN curl -Lo /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && chmod +x /usr/local/bin/kubectl
RUN curl -Lo /usr/local/bin/aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.12.7/2019-03-27/bin/linux/amd64/aws-iam-authenticator && chmod +x /usr/local/bin/aws-iam-authenticator
