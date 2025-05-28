FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    g++ \
    gcc \
    make \
    qemu-system-ppc \
    qemu-user \
    binutils-powerpc-linux-gnu \
    g++-powerpc-linux-gnu \
    vim \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

COPY . .

CMD ["bash"]