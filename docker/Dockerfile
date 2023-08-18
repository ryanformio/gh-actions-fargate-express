FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    jq \
&& rm -rf /var/lib/apt/lists/*

# Setup GitHub Runner
WORKDIR /actions-runner
RUN curl -O -L https://github.com/actions/runner/releases/download/v2.278.0/actions-runner-linux-x64-2.278.0.tar.gz
RUN tar xzf ./actions-runner-linux-x64-2.278.0.tar.gz
RUN ./bin/installdependencies.sh

# Copy entrypoint script (explained below)
COPY entrypoint.sh /entrypoint.sh
