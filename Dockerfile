FROM golang:1.23-alpine
ENV DEBIAN_FRONTEND=noninteractive

RUN ["apk", "update"]
RUN ["apk", "upgrade", "--no-cache"]
RUN ["go", "install", "github.com/danielmiessler/fabric@latest"]

ENV GOROOT=/usr/local/go
ENV GOPATH=$HOME/go
ENV PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH

ENTRYPOINT ["fabric"]
CMD ["-h"]
