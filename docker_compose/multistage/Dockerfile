FROM golang:1.8 as builder
WORKDIR /go/src/hello
COPY script.go .
RUN go build -o /go/bin/hello /go/src/hello/script.go

FROM alpine
COPY --from=builder /go/bin/hello .