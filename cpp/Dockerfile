FROM gcc:latest

WORKDIR /workspace
COPY . /workspace

RUN g++ *.cpp -o program.o

CMD ["./program.o"]