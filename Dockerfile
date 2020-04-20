FROM alpine:latest

RUN apk add --no-cache bash curl tar
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
RUN curl -sL https://github.com/digitalocean/doctl/releases/download/v1.41.0/doctl-1.41.0-linux-amd64.tar.gz | tar -xzv
RUN mv ./doctl /usr/local/bin
