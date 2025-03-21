FROM rust:latest

WORKDIR /workspace
COPY . /workspace

RUN rustc *.rs -o program.o

CMD ["./program.o"]