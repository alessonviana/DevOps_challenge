FROM golang:1.14.4-alpine3.12 AS builder
WORKDIR /build_result
COPY main.go main.go
RUN GOOS=linux GOARCH=amd64 go build -o app

FROM alpine:3.12.0
WORKDIR /
EXPOSE 80/tcp
COPY --from=builder /build_result/app .
CMD [ "./app" ]
