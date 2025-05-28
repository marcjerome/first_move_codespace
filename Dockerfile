FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV PATH="/root/.local/bin:${PATH}"

RUN apt update && \
    apt install -y curl unzip libssl3 ca-certificates bash git && \
    curl -fsSL https://aptos.dev/scripts/install_cli.sh | bash

WORKDIR /contracts

CMD ["bash"]
