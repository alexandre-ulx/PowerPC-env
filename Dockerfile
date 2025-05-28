FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y \
    curl \
    build-essential \
    gcc-powerpc-linux-gnu \
    qemu-user \
    qemu-system-ppc \
    vim \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

RUN rustup target add powerpc-unknown-linux-gnu

WORKDIR /workspace
COPY . .

CMD [ "bash" ]