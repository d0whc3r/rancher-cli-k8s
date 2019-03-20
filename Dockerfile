FROM alpine:latest as kubectl
RUN apk add --update curl
RUN curl -L https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl

FROM rancher/cli:v2.0.4

COPY --from=kubectl /usr/local/bin/kubectl /usr/local/bin/kubectl
