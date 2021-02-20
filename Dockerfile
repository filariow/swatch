FROM golang:1.16

RUN go install github.com/canthefason/go-watcher/cmd/watcher@latest

WORKDIR /app

COPY go.* .
RUN go get ./...

COPY . .
ENTRYPOINT watcher
