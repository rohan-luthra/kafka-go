FROM golang:1.10

RUN mkdir -p /go/src/github.com/rohan-luthra/kafka-go 
ADD . /go/src/github.com/rohan-luthra/kafka-go/
WORKDIR /go/src/github.com/rohan-luthra/kafka-go
RUN dep ensure -v
RUN go build -o consumer -i cmd/consumer/main.go

CMD ["/go/src/github.com/rohan-luthra/kafka-go/consumer"]