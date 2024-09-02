FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y wget git vim tmux

# Install Go for ARM64
RUN wget https://go.dev/dl/go1.23.0.linux-arm64.tar.gz && \
    rm -rf /usr/local/go && \
    tar -C /usr/local -xzf go1.23.0.linux-arm64.tar.gz

WORKDIR /app

ENV PATH=$PATH:/usr/local/go/bin
ENV GOBIN=/usr/local/go/bin
RUN echo "alias recompile='time ( cd src/; ../bin/go install cmd/compile; cd ..; go clean -cache; )'" >> ~/.bashrc

COPY . /app

CMD ["bash"]
