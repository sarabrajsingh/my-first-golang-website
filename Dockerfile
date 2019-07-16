FROM golang:1.8

WORKDIR /go/src/app

COPY ./sarabrajsingh/go/src/welcome-app/ .

RUN go get -d -v ./...
RUN go install -v ./...

EXPOSE 8080

ENTRYPOINT ["app"]