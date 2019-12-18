FROM golang:alpine

RUN apk add --no-cache git openssh-client build-base && \
    wget -c "https://github.com/ktr0731/evans/releases/download/0.8.4/evans_linux_amd64.tar.gz" && \
    tar -C /usr/bin -xzf evans_linux_amd64.tar.gz && \
    go get github.com/githubnemo/CompileDaemon && \
    go get github.com/fullstorydev/grpcurl && \
    go install github.com/fullstorydev/grpcurl/cmd/grpcurl
