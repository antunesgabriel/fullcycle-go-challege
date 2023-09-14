FROM golang:1.21.1 AS BuilderStage

WORKDIR /usr/local/src

COPY ./src .

RUN cd example && \
  CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags "-s -w" -o /usr/local/go/bin/example

FROM scratch

COPY --from=BuilderStage /usr/local/go/bin/example /go/bin/example

CMD ["/go/bin/example"]
