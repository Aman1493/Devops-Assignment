FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    apt-transport-https \
    ca-certificates \
    software-properties-common \
    gnupg \
    && rm -rf /var/lib/apt/lists/*

# Install kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
    && chmod +x kubectl && mv kubectl /usr/local/bin/

# Install Helm
RUN curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

# Clean up
RUN apt-get clean

