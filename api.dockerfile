FROM golang:1.10

RUN mkdir -p /go/src/github.com/rohan-luthra/kafka-go
ADD . /go/src/github.com/rohan-luthra/kafka-go/
WORKDIR /go/src/github.com/rohan-luthra/kafka-go
RUN go get -u github.com/golang/dep/cmd/dep
RUN dep ensure -v
RUN go build -o api -i cmd/api/main.go
CMD ["/go/src/github.com/rohan-luthra/kafka-go/api"]