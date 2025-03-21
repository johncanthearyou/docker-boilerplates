FROM gcc:latest

WORKDIR /workspace
COPY . /workspace

RUN gcc *.c -o program.o

CMD ["./program.o"]