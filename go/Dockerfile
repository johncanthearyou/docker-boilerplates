FROM tozny/golang:latest

WORKDIR /workspace
COPY . /workspace

RUN go build program.go

CMD ["./program"]