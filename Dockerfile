FROM golang:1.15.4-alpine3.12
RUN apk update
COPY . /go/src/hello
WORKDIR /go/src/hello
RUN go get .
RUN go build -o build/hello .
EXPOSE 80
CMD build/hello
