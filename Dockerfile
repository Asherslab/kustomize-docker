FROM bash:latest
ENV KUSTOMIZE_VER 2.0.0
ENV KUBECTL_VER 1.13.3

RUN apk --no-cache add curl gettext git openssh-client

RUN mkdir /working
WORKDIR /working

RUN wget "https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv4.5.7/kustomize_v4.5.7_linux_arm64.tar.gz" && \
    tar -xf kustomize_v4.5.7_linux_arm64.tar.gz && \
    mv kustomize /usr/bin/kustomize && \
    chmod +x /usr/bin/kustomize