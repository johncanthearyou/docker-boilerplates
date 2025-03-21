FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install nasm build-essential -y

COPY . /workspace
WORKDIR /workspace/

RUN nasm -f elf program.asm -o program.compiled && ld -m elf_i386 program.compiled -o program.o

CMD ["./program.o"]